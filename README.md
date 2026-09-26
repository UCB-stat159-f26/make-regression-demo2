## README

This repository contains a toy example of a data analysis pipeline to
illustrate the use of a Makefile.

This example is discussed in STAT 159/259:

<https://stat159-fall26.netlify.app/lectures/15-make2/15-make-intro2-slides>


## Motivation

The toy project involves 3+1 major stages:

1) Data: Generate x-y data

2) Model: Fit simple linear regression model: $y_hat = b_0 + b_1 x$

3) Plot: Graph scatter plot with fitted regression line

4) Report that incorporates:
    + model (from stage 2) and
    +plot (from stage 3)
    

## Makefile Rules

To execute the entire pipeline, simply run:

```bash
make
```

Individual rules can be generated as follow:

```bash
make data/data.csv
make data/model.RData
make images/plot.png
make doc/report.html
```


To clean all files, run:

```bash
make clean
```


## File structure

```
make-regression-demo/
  README
  code/
    01-generate_data.R
    02-fit_model.R
    03-plot_model.R
  data/
    data.csv
    model.RData
  images/
    plot.png
  doc/
    report.qmd
    report.html
  Makefile
```

