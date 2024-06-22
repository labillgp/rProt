# Region-Specific PSD-95 Interactome Signatures Of Excitatory Synapses in Human Brain

The code in this repository analyzes LC-MS proteomics data with technical repeats.

## File intake
An example of file intake is provided: ```etl\dataset_human_scz_2018-05-03.Rmd```.
There are several goals to the intake process:
* Perform basic cleaning, such as column names
* Normalize rownames
* Identify the experiment "structure", which is to say, the biosamples, phenotypes and repeats
* Optionally exclude some columns
* Save the configuration in a single rds (R DataSet) file.

## Running the pipeline
An example of pipeline is provided: ```experiements\4-regions\4-regions.Rmd```.

The steps executed in the file are:
1. Load the library
2. Load the data file with associated metadata (the .rds file produced by the intake process)
3. Load a default configuration and adjust as needed
4. Run the pipeline (main function)

## Reviewing, analyzing, graphing the data
The pipeline will produced a new rds file, which name is a function of the pipeline configuration. All data and configuration is including in this process, so analysis and figures can be produced from it. The example pipeline plots a heatmap from the data produced by the pipeline

## About the configuration
Any element of the configuration can be modified by setting a new value to the corresponding slot of the configuration file. One can review all possible configurations by inspecting the rds file in RStudio viewer.
