# Install required packages for bookdown
packages <- c("bookdown", "rmarkdown", "knitr", "ggplot2")

for (pkg in packages) {
  if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
    cat("Installing package:", pkg, "\n")
    install.packages(pkg, repos = "https://cran.rstudio.com")
  } else {
    cat("Package", pkg, "is already installed\n")
  }
}

# Check versions
cat("\nPackage versions:\n")
cat("bookdown:", as.character(packageVersion("bookdown")), "\n")
cat("rmarkdown:", as.character(packageVersion("rmarkdown")), "\n")
cat("knitr:", as.character(packageVersion("knitr")), "\n") 