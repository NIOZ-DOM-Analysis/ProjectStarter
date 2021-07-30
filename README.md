# ProjectStarter

It will use the user defined input information to create new folders in the defined location, which the other repositories from NIOZ-DOM-Analyisis will use for data analysis.

Open the 'Start_New_Project.R' file, this should open in Project:None, and you can check if the working directory [getwd()] is your /ProjectStarter folder

Please only run the 'Start_New_Project.R' file. (The scripts 'create_datalfolders.R' & 'create_directory.R' in the scripts folder are incorporated in the 'Start_New_Project.R' script.)

It will create a new Rproject
This will result in the following folders:
```
├─ Github
  ├─  Projects
    ├─ owner.initials
      ├─ Year
        ├─ Experiment/Project.Name
          ├─ (optionally sub.experiment and then the other folders will be in this directory)
          ├─ Cytoscape
            ├─ Analogs_on
            ├─ MolNetEnhancer
          ├─ doc
          ├─ figures
          ├─ output
          ├─ R
            ├─[Project.Name].Rproj
          ├─ RAWdata
```

Put the raw data in the Raw Folder.
The DataCleanup repository will read out the datafiles automatically.
Raw Folder needs the following files:
POSTgapfilled.csv (output from MZmine2)
PREgapfilled.csv (output from MZmine2)
orbitrapsequence.csv (File Name and Sample Name from orbitrap sequence + added column of sample-methodblank-instrumentblank-standard)
metadata.csv (metadata file)

Optional are:
SIRIUS.mgf (exportfile from SIRIUS -> not from MZMINE! UNZIP the GNPS SIRIUS file in raw data folder)

Download the cytoscape data from GNPS and unzip into the Cytoscape folder and name the folder `analogs_on` and make sure there is a list of analogs

Open the Rproject in the R folder and from there open the DataCleanup.R to read in your data and clean them


Example:
During a fieldtrip in 2018 there was one experiment performed (MCSMAC) and in 2019 there were two seperate experiments performed by MGIA (ABCDom & BA), MCSMAC rawdata was processed twice with different settings to compare (in dec '18 and jun '19) therfore the option of sub.experiment.name was used.
The folder structure will look as followed:

```
├─ Github
  ├─ Projects
    ├─ MGIA
      ├─ 2018
        ├─ MCSMAC
          ├─ MZmine_settings_Dec18
            ├─ Cytoscape
            ├─ doc
            ├─ figures
            ├─ output
            ├─ R
              ├─MZmine_settings_Dec18.Rproj
            ├─ RAWdata
          ├─ MZmine_settings_Jun19
            ├─ Cytoscape
            ├─ doc
            ├─ figures
            ├─ output
            ├─ R
              ├─MZmine_settings_Jun19.Rproj
            ├─ RAWdata
      ├─ 2019
        ├─ ABCDom
          ├─ Cytoscape
          ├─ doc
          ├─ figures
          ├─ output
          ├─ R
            ├─ABCDom.Rproj
          ├─ RAWdata  
        ├─ BA
          ├─ Cytoscape
          ├─ doc
          ├─ figures
          ├─ output
          ├─ R
            ├─BA.Rproj
          ├─ RAWdata
```
