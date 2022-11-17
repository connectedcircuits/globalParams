# globalParams

This repo demostrates using a global parameter file to update two different Azure Logic App projects containing a parameter file that needs to be updated with vaules contained in a global parameter file. 

The project structure is laid out below -

| Path | File | Description |
| -- | -- | -- |
| Deploy\PSScripts | mergeParameters.ps1 | PS script to merge two json files |
| Deploy\Templates | deploy-logicapp-projects.yml | deploys the Logic Apps to Azure |
| Deploy\Templates | merge-parameter-files.yml | helper file to merage each of the parameter files with the global file |
| Deploy | azure-pipelines.yml | Azure DevOps pipeline file to orchestrate the merging of the parameter files and deploying the Logic Apps to Azure |
| LogicAppOne | * | Arm template for the sample Logic App and parameter file |
| LogicAppTwo | * | Arm template for the sample Logic App and parameter file |
| . | globalParameters-sit.json | global parameter file that contains the values to be meraged into each Logic App parameter file |



