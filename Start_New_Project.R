#################################################################
####                    USER DEFINED INPUT                   ####
#################################################################

# provide the information for the folder structure. Should be identical to DAS when at NIOZ
Project.year<- '2018'       # what was the year the project/experiment started?
Project.name<- 'MCSMAC'     # A project is basically also an experiment, if you do have multiple experiments within one project, please use use sub.experiment
                            # Every project has a name!, probably also an acronym "If you don't have an acronym for your experiment you don't have an experiment!" - Dr. Craig Nelson, 2018
Owner.initials <- 'MGIA'    # Who's adventure is it? is it yours or is it someone else's (collaborator) aka. who will probably be first author?
Author<- 'Milou G.I. Arts'  # Who are you? who is doing this analysis?
# sub.experiment.name<- 'MZmine_settings_Jun19' # this is optional, if you have multiple experiments, or multiple MZmine outputs from different settings, using this option will create a folder within your Project folder


# path where to store the data, new folders will be created based on the information provided above.
main.data.path <- file.path("..") #if used it will create a Projects folder in the github folder, otherwise define a file path here ('C:/Users/Name/Documents/DATA')
Data.cleanup.scripts <- file.path( "..", "..","..","..", "..", "DataCleanup", "Scripts")
Project.starter.scripts <- file.path(".","Scripts")


#################################################################
####               END OF USER DEFINED INPUT                 ####
#################################################################
#### Data management
#Create directory for the experiment if it doesnt exist already
# also creates objects with directory used in other scripts
source(file.path(Project.starter.scripts,'create_directory.R'))


# within this folder we are creating sub folders.
# check if  the directory already exists, otherwise create new
# also creates objects with directory used in other scripts
source(file.path(Project.starter.scripts,'create_datafolders.R'))


#if this is the first time running this, create a new project (in existing directory)
#and save this in the created R folder


#################################################################
####                    USER ACTION Required                 ####
#################################################################
'
If you did not have all these folders, there is probably no data in the RAWdata folder.
Put the raw data in here.
we will only use the .csv files

therefore, if there is data that needs to be processed (like the raw .mzXML files from the orbitrap that needs to be processed with MZmine2)
which will create an .csv file process it first

needed are the following files:
POSTgapfilled.csv (output from MZmine2)
PREgapfilled.csv (output from MZmine2)
orbitrapsequence.csv (File Name and Sample Name from orbitrap sequence + added column of sample-methodblank-instrumentblank-standard)
SIRIUS.mgf (exportfile from SIRIUS -> not from MZMINE! UNZIP the GNPS SIRIUS file in raw data folder)
metadata.csv (metadata file)

download the cytoscape data from GNPS and unzip into the previously created Cytoscape folder named `Analogs_on` and make sure there is a list of analogs

##not yet done, but a good one also make a main_project_info_XXX.R in the R folder with the info of the experiment so that you dont have to change it all the time when
you analyzed a different project and therefore changed the main script.
'
#################################################################
####               END OF USER Required action               ####
#################################################################
