'create_directory.R

Goal: Create directory for the experiment if it doesnt exist already


Written by:
Milou Arts, NIOZ, NL, 2019

List of alterations:

'
# make a Projects folder if directory does not already exist.
ifelse(!dir.exists(file.path(main.data.path, 'Projects')), dir.create(file.path(main.data.path, 'Projects')), FALSE)

data.path <- file.path(main.data.path, 'Projects')

# Owner initials. check if directory exist, otherwise create new
ifelse(!dir.exists(file.path(data.path, Owner.initials)), dir.create(file.path(data.path, Owner.initials)), FALSE)

# add owner initals to string
data.path <- file.path(data.path, Owner.initials)

# Project year. check if directory exist, otherwise create new
ifelse(!dir.exists(file.path(data.path, Project.year)), dir.create(file.path(data.path, Project.year)), FALSE)

# add Project year to string for data path
data.path <- file.path(data.path, Project.year) 

# Project name. check if folder exist, otherwise create new
ifelse(!dir.exists(file.path(data.path, Project.name)), dir.create(file.path(data.path, Project.name)), FALSE)

# add Project.name to string for data path
data.path <- file.path(data.path, Project.name)

# Experiment name. check if directory to safe files exist, otherwise create new
if(exists("sub.experiment.name")){
ifelse(!dir.exists(file.path(data.path, Experiment.name)), dir.create(file.path(data.path, Experiment.name)), FALSE)

# add Experiment name to string for data path
data.path <- file.path(data.path, Experiment.name)
}
