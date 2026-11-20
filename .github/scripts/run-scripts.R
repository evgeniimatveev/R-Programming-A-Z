# Smoke-run every course script in its own Rscript process and report pass/fail.
#
# Rules:
#   * scripts that need interactive input (file.choose / readline) are skipped
#   * scripts in 03-matrices get basketball-data.R sourced first, because they
#     rely on the matrices it creates (FieldGoals, Games, Players, ...)
#   * each script runs from the repo root so relative paths like data/... work
#   * plots go to a null device; a per-script timeout stops runaway loops

timeout_sec <- 120
prelude_for <- function(path) {
  if (startsWith(path, "03-matrices/") && basename(path) != "basketball-data.R") {
    "03-matrices/basketball-data.R"
  } else {
    character()
  }
}

all_files <- sort(list.files(".", pattern = "[.]R$", recursive = TRUE))
scripts <- all_files[grepl("^0[0-9]-", all_files)]

is_interactive <- function(path) {
  lines <- readLines(path, warn = FALSE, encoding = "UTF-8")
  code <- lines[!grepl("^[[:space:]]*#", lines)]
  any(grepl("file.choose(", code, fixed = TRUE)) || any(grepl("readline(", code, fixed = TRUE))
}

results <- data.frame(script = character(), status = character(), seconds = numeric(),
                      stringsAsFactors = FALSE)
details <- list()

for (s in scripts) {
  if (is_interactive(s)) {
    cat(sprintf("SKIP  %s (needs interactive input)\n", s))
    results[nrow(results) + 1, ] <- list(s, "skipped", 0)
    next
  }
  files <- c(prelude_for(s), s)
  expr <- sprintf(
    "options(warn = 1); pdf(NULL); for (p in c(%s)) source(p, echo = FALSE, encoding = 'UTF-8')",
    paste0("'", files, "'", collapse = ", ")
  )
  t0 <- Sys.time()
  out <- suppressWarnings(system2("Rscript", c("--vanilla", "-e", shQuote(expr)),
                                  stdout = TRUE, stderr = TRUE, timeout = timeout_sec))
  secs <- as.numeric(difftime(Sys.time(), t0, units = "secs"))
  code <- attr(out, "status")
  ok <- is.null(code) || code == 0
  status <- if (ok) "passed" else if (identical(code, 124L)) "timeout" else "FAILED"
  cat(sprintf("%-6s %s (%.1fs)\n", toupper(substr(status, 1, 4)), s, secs))
  if (!ok) {
    tail_out <- utils::tail(out, 12)
    cat(paste0("      | ", tail_out, collapse = "\n"), "\n")
    details[[s]] <- tail_out
  }
  results[nrow(results) + 1, ] <- list(s, status, round(secs, 1))
}

n_pass <- sum(results$status == "passed")
n_fail <- sum(results$status %in% c("FAILED", "timeout"))
n_skip <- sum(results$status == "skipped")
cat(sprintf("\nSummary: %d passed, %d failed, %d skipped, %d total\n", n_pass, n_fail, n_skip, nrow(results)))

summary_file <- Sys.getenv("GITHUB_STEP_SUMMARY")
if (nzchar(summary_file)) {
  icon <- c(passed = "✅", FAILED = "❌", timeout = "⏱️", skipped = "⏭️")
  md <- c("## R script smoke run", "",
          sprintf("**%d passed · %d failed · %d skipped** (of %d scripts)", n_pass, n_fail, n_skip, nrow(results)),
          "", "| Script | Result | Seconds |", "|---|:-:|--:|",
          sprintf("| `%s` | %s %s | %s |", results$script, icon[results$status], results$status, results$seconds))
  if (length(details)) {
    md <- c(md, "", "### Errors", "")
    for (s in names(details)) {
      md <- c(md, sprintf("<details><summary><code>%s</code></summary>", s), "", "```",
              details[[s]], "```", "", "</details>", "")
    }
  }
  writeLines(md, summary_file, useBytes = TRUE)
}

if (n_fail > 0) quit(status = 1)
