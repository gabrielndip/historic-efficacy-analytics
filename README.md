# Historic GEMMS Analysis Workflow

This repository contains a series of R Markdown and R script files designed to process, analyze, visualize, and model data from the historic GEMMS dataset. Each file corresponds to a specific stage of the analysis pipeline, offering a structured approach to understanding and interpreting the data.

## Table of Contents

	•	Overview
	•	File Descriptions
	•	Getting Started
	•	Dependencies
	•	Usage
	•	Contributing
	•	License

## Overview

The analysis pipeline for the historic GEMMS dataset includes the following steps:
	1.	Data preparation and cleaning.
	2.	Exploratory data visualization.
	3.	Statistical model development and evaluation.
	4.	Advanced visualization and statistical extensions.
	5.	Post-hoc contrasts for statistical comparisons.

The repository is structured to allow independent execution of each step or the entire workflow.

## File Descriptions

01-historic-gemms-data-prep.Rmd

	•	Description: Prepares and cleans the GEMMS dataset for analysis. Includes data import, cleaning, and transformation steps.
	•	Output: A clean dataset ready for further analysis.

02-historic-gemms-viz.Rmd

	•	Description: Focuses on exploratory data visualization to uncover patterns and trends within the dataset.
	•	Output: A variety of visualizations for data exploration.

03-historic-gemms-stat-models.Rmd

	•	Description: Fits and evaluates statistical models based on the prepared GEMMS dataset. Provides insights through model diagnostics and summary metrics.
	•	Output: Statistical results and visualizations of model performance.

04-historic-gemms-viz-se.Rmd

	•	Description: Extends data visualization by incorporating additional statistical elements such as standard errors and confidence intervals.
	•	Output: Enhanced visualizations with statistical annotations.

05-historic-gemms-stat-models-se.Rmd

	•	Description: Builds on the statistical modeling in 03-historic-gemms-stat-models.Rmd by incorporating standard error analysis and uncertainty quantification.
	•	Output: Advanced statistical summaries and uncertainty assessments.

06-historic-gemms-contrasts.R

	•	Description: Implements post-hoc contrasts for statistical comparisons between groups. The script provides a detailed framework for generating contrasts and interpreting group differences within the GEMMS dataset.
	•	Output: Group comparisons with calculated contrast statistics and visualization of the results.

## Getting Started

	1.	Clone the repository:git clone https://github.com/yourusername/historic-gemms-analysis.git
	2.	Install the required R packages (listed in Dependencies).
	3.	Open the R Markdown files or the R script in RStudio to execute the analysis.

## Dependencies

The following R packages are required to run the analysis:
	•	tidyverse
	•	ggplot2
	•	dplyr
	•	broom
	•	readr
	•	knitr
	•	rmarkdown
	•	emmeans

Install the packages with:

install.packages(c("tidyverse", "ggplot2", "dplyr", "broom", "readr", "knitr", "rmarkdown", "emmeans"))

Additional packages may be required for specific files; please refer to the top of each file for specific library calls.

## Usage

	1.	Data Preparation: Start with 01-historic-gemms-data-prep.Rmd to clean and transform the dataset.
	2.	Exploratory Visualization: Use 02-historic-gemms-viz.Rmd to generate initial visualizations.
	3.	Statistical Modeling: Execute 03-historic-gemms-stat-models.Rmd to fit and evaluate statistical models.
	4.	Advanced Visualization: Run 04-historic-gemms-viz-se.Rmd for detailed visualizations with statistical elements.
	5.	Extended Statistical Analysis: Execute 05-historic-gemms-stat-models-se.Rmd for advanced statistical insights.
	6.	Post-Hoc Contrasts: Use 06-historic-gemms-contrasts.R to perform group comparisons and analyze differences using post-hoc contrast methods.

Knit R Markdown files to generate HTML or PDF outputs for reporting, and run the R script for specific statistical tasks.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.
