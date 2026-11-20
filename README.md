<div align="left">
  <img alt="R" src="https://img.shields.io/badge/language-R-276DC3?logo=r&logoColor=white">
  <img alt="ggplot2" src="https://img.shields.io/badge/viz-ggplot2-1f77b4">
  <img alt="RStudio" src="https://img.shields.io/badge/IDE-RStudio-75AADB">
  <img alt="Scripts" src="https://img.shields.io/badge/scripts-45-2ea44f">
  <a href="https://github.com/evgeniimatveev/R-Programming-A-Z/actions/workflows/r-check.yml"><img alt="R syntax check" src="https://github.com/evgeniimatveev/R-Programming-A-Z/actions/workflows/r-check.yml/badge.svg"></a>
</div>

# R Programming A–Z 📊

A hands-on R course in 45 commented scripts: from variables and loops to matrices, data frames and a full **ggplot2** workflow on a real movie-ratings dataset. Every script is a self-contained lecture with examples and key takeaways in the comments.

---

## 🗺️ Course map

| # | Section | Scripts | What you build |
|---|---------|:------:|----------------|
| 00 | [Quickstart](00-quickstart/) | 1 | Aggregate revenue by country in 10 lines |
| 01 | [Core Programming Principles](01-core-programming/) 🧩 | 11 | Variables, logicals, `if/else`, `while`/`for` loops |
| 02 | [Fundamentals of R](02-fundamentals/) 🚀 | 5 | Vectors, `[]` subsetting, vectorized ops, functions |
| 03 | [Matrices & Advanced Operations](03-matrices/) 🧮 | 8 | Basketball statistics with matrices |
| 04 | [Data Frames & Analysis](04-data-frames/) 📊 | 10 | Import, filter, merge, EDA, `qplot()` |
| 05 | [Advanced Visualization with ggplot2](05-ggplot2/) 📈 | 10 | Movie-ratings charts: layers, facets, themes |

## 📂 Repository layout

```
R-Programming-A-Z/
├── 00-quickstart/        # 10-line warm-up
├── 01-core-programming/  # one folder per course section
├── 02-fundamentals/
├── 03-matrices/
├── 04-data-frames/
├── 05-ggplot2/
├── data/                 # datasets used by the scripts
├── docs/                 # reference material (Grammar of Graphics PDF)
├── .github/workflows/    # CI: syntax check of every R script
└── R-Programming-A-Z.Rproj
```

## 🚀 Quick start

```bash
git clone https://github.com/evgeniimatveev/R-Programming-A-Z.git
cd R-Programming-A-Z
```

1. Open `R-Programming-A-Z.Rproj` in RStudio. This sets the working directory to the repo root, which the scripts rely on (e.g. `data/movie-ratings.csv`).
2. Install the packages once: `install.packages("ggplot2")`.
3. Run the scripts section by section.

## ⚠️ Known limitations

- Section 04 scripts load their dataset with `file.choose()`. The course's demographic CSV is **not included** in this repository.
- Scripts are teaching material and are checked for valid R syntax in CI, not executed end to end.

## 🧪 CI

Every push and pull request parses all `.R` files and fails on syntax errors, absolute local paths, or spaces in file names. See [`.github/workflows/r-check.yml`](.github/workflows/r-check.yml).

## 👨‍💻 Author

**Evgenii Matveev** — Data Analyst / Analytics & MLOps Engineer · [GitHub](https://github.com/evgeniimatveev)

> This repo used to keep each section on its own branch. Everything now lives on `main`, and the original branch history is preserved in the commit graph.
