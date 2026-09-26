.PHONY: all clean

all: data/data.csv data/model.RData images/plot.png doc/report.html

data/data.csv: code/01-generate_data.R
	cd code && Rscript 01-generate_data.R

data/model.RData: code/02-fit_model.R data/data.csv
	cd code && Rscript 02-fit_model.R

images/plot.png: code/03-plot_model.R data/data.csv data/model.RData
	cd code && Rscript 03-plot_model.R

doc/report.html: doc/report.qmd data/model.RData images/plot.png
	cd doc && quarto render report.qmd

clean:
	cd data && rm -f data.csv model.RData
	cd images && rm -f plot.png
	cd doc && rm -f report.html
