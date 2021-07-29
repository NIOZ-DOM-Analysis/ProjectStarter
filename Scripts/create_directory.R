'create_directory.R

Goal: Create directory for the experiment if it doesnt exist already


Written by:
Milou Arts, NIOZ, NL, 2019

List of alterations:

'

# Owner initials. check if directory exist, otherwise create new
ifelse(!dir.exists(file.path(main.data.path, Owner.initials)), dir.create(file.path(main.data.path, Owner.initials)), FALSE)

# add owner initals to string
data.path <- paste0(main.data.path, '\\', Owner.initials)

# Adventure year. check if directory exist, otherwise create new
ifelse(!dir.exists(file.path(data.path, Adventure.year)), dir.create(file.path(data.path, Adventure.year)), FALSE)

# add Adventure year to string for data path
data.path <- paste0(data.path, '\\', Adventure.year) 

# Adventure name. check if folder exist, otherwise create new
ifelse(!dir.exists(file.path(data.path, Adventure.name)), dir.create(file.path(data.path, Adventure.name)), FALSE)

# add Adventure.name to string for data path
data.path <- paste0(data.path, '\\', Adventure.name)

# Experiment name. check if directory to safe files exist, otherwise create new
ifelse(!dir.exists(file.path(data.path, Experiment.name)), dir.create(file.path(data.path, Experiment.name)), FALSE)

# add Experiment name to string for data path
data.path <- paste0(data.path, '\\', Experiment.name)

# within this folder we are creating sub folders.
# check if  the direction already exists, otherwise create new