# LaTeX Pamphlet Maintenance Guide

This document outlines the process for maintaining and converting the LaTeX (`.tex`) files into PDF (`.pdf`) pamphlets for the AI Fluency course.

## Prerequisites

To compile the `.tex` files, you will need a working LaTeX distribution installed on your system. We recommend [TeX Live](https://www.tug.org/texlive/).

You will also need to have the `poppler` utility installed, which is a dependency for some of the scripts. You can install it using Homebrew on macOS:

```bash
brew install poppler
```

## Compiling `.tex` Files

To compile a single `.tex` file into a PDF, you can use the `pdflatex` command. For example, to compile the `0e37fa9da01fab7a5478a2194d352027794c1b89.tex` file, you would run the following command from the root of the project:

```bash
pdflatex -output-directory=course/hu/pamphlets course/hu/pamphlets/0e37fa9da01fab7a5478a2194d352027794c1b89.tex
```

To compile all of the `.tex` files at once, you can use a simple `for` loop in your terminal:

```bash
for file in course/hu/pamphlets/*.tex; do pdflatex -output-directory=course/hu/pamphlets "$file"; done
```

## Maintaining the Pamphlets

The pamphlets are generated from the `.tex` files in the `course/hu/pamphlets/` directory. To make changes to a pamphlet, you should edit the corresponding `.tex` file and then re-compile it to a PDF.

The content for the pamphlets is based on the text files in the `course/hu/pamphlets/text/` directory. If you need to make significant changes to the content, it is recommended to update the text file first and then update the `.tex` file accordingly.