
# Historic efficacious data integration and "meta-analytics"

## Historic GEMMs Data Preparation (01-historic-gemms-data-prep.Rmd)

This repository contains the R code and resources for preparing historical data from vehicle- and Alpha-treated genetically engineered mouse models (GEMMs). The workflow includes data loading, cleaning, wrangling, and integration of mutation data, as well as saving the processed datasets for downstream analysis.

### Table of Contents

1. [Overview](#overview)
2. [Requirements](#requirements)
3. [Files and Structure](#files-and-structure)
4. [Usage](#usage)
5. [Outputs](#outputs)
6. [Reproducibility](#reproducibility)
7. [Acknowledgments](#acknowledgments)

### Overview

The primary script, `01-historic-gemms-data-prep.Rmd`, performs the following tasks:
- Loads and preprocesses raw `.csv` data files from the GEMM studies.
- Cleans and standardizes key variables such as timepoints and study identifiers.
- Integrates mutation data from an external Excel file.
- Outputs cleaned data in multiple formats for flexibility in analysis.

### Requirements

The following R packages are required to run the code:
- `tidyverse`: For data manipulation and wrangling.
- `openxlsx`: For reading and writing Excel files.
- `readr`: For reading `.csv` files.
- Base R utilities like `tools`, `stringr`, and `forcats`.

Make sure R version 4.0.0 or later is installed.

### Files and Structure

- **`01-historic-gemms-data-prep.Rmd`**: The main R Markdown script for data preparation.
- **`data/`**: Directory containing raw `.csv` data files for individual GEMM studies.
- **`mut-data.xlsx`**: External Excel file with mutation data linked to the studies.
- **`clean-data/`**: Directory to save intermediate and processed data files.
- **`tables/`**: Directory for summary tables exported as `.xlsx` files.

### Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/username/historic-gemms-data-prep.git

	2.	Open 01-historic-gemms-data-prep.Rmd in RStudio.
	3.	Ensure the data/ directory contains the necessary raw .csv files.
	4.	Run the R Markdown script to generate processed datasets and summary tables.

Outputs

	•	Cleaned Data:
	•	clean-data.rds: Compressed RDS file for quick loading in R.
	•	clean-data-historic-gemms.xlsx: Excel file with processed data.
	•	Summary Tables:
	•	tables/table_study.xlsx: Maps study identifiers to their mutations.
	•	Saved Environment:
	•	01-data.RData: The full R environment for reproducibility.

Reproducibility

The script ensures reproducibility by:
	•	Documenting all steps in the R Markdown file.
	•	Saving the R environment (.RData) and session information (sessionInfo()).
	•	Using consistent random seeds for reproducibility of random operations.
