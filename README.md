# To-Do List for Cursor AI

## 1. 📁 Project Setup

**Create project folder:**
```
/my-gitbook-tutorial/
├── index.Rmd
├── 01-intro.Rmd
├── 02-install.Rmd
├── 03-content.Rmd
├── 04-publish.Rmd
├── _bookdown.yml
├── _output.yml
└── README.md
```

**Fill README.md with:**
- Description of the tutorial
- Tech used: R, RStudio, bookdown
- Rendering command: `bookdown::render_book("index.Rmd")`

## 2. ✍️ Chapters and Their Contents

### index.Rmd
- Title, author, short intro
- Explain: "This is a tutorial about making tutorials in GitBook format using RStudio and bookdown."

### 01-intro.Rmd
- What is GitBook format?
- What is bookdown::gitbook?
- Show examples of where it's used (e.g., data science tutorials, reproducible research)

### 02-install.Rmd
**Installation instructions for:**
- R (link to https://cran.r-project.org)
- RStudio (https://posit.co/download/rstudio-desktop/)
- Git (https://git-scm.com/)
- bookdown package (`install.packages("bookdown")`)
- (Optional but helpful: rmarkdown, knitr)

### 03-content.Rmd
**How to write tutorial content:**
- Structure with .Rmd files = chapters
- Headings = sections
- Code chunks: ````{r} ... ````
- Plots, inline R code, math (e.g., `$y = mx + b$`)
- Cross-references and figure/table captions
- **Optional enhancements:**
  - Footnotes
  - Citations (BibTeX)
  - Images
  - Callouts with blockquotes or custom syntax

### 04-publish.Rmd
**How to render and publish:**

**Rendering locally:**
```r
bookdown::render_book("index.Rmd", "bookdown::gitbook")
```

**GitHub + Netlify:**
- Push project to GitHub
- Connect repo to Netlify
- Set build command: `Rscript -e "bookdown::render_book('index.Rmd')"`
- Set publish directory: `_book/`

## Config Files

### _bookdown.yml
```yaml
rmd_files: [
  "index.Rmd",
  "01-intro.Rmd",
  "02-install.Rmd",
  "03-content.Rmd",
  "04-publish.Rmd"
]
```

### _output.yml
```yaml
bookdown::gitbook:
  config:
    toc:
      collapse: none
    download: ["pdf", "epub"]
    sharing: ["twitter", "linkedin"]
``` 