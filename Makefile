# Define the list of tables
TABLES = tables/table1.tex tables/table2.tex

# Compile the paper
paper/paper.pdf : paper/paper.tex figures/fig1.png $(TABLES)
	pdflatex paper/paper.tex -output-directory paper

# Create Figure 1
figures/fig1.png : R/fig1.R data/clean_data.RDS figures
	Rscript R/fig1.R

# Create Tables 1 and 2
$(TABLES) : R/tables.R data/clean_data.RDS tables
	Rscript R/tables.R

# Clean the data
data/clean_data.RDS : R/clean_data.R data/raw_data.csv
	Rscript R/clean_data.R

# Create the figures and tables subdirectories
figures :
	mkdir figures

tables :
	mkdir tables
