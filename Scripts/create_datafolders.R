'create_datafolders.R

Goal: Make differnt folders to store raw data, processed data, figures and the paper


Written by:
Milou Arts, NIOZ, NL, 2019

List of alterations:


'
dirOriginal<-getwd()
# R directory, this will be the working directory, environment etc.
ifelse(!dir.exists(file.path(data.path, 'R')), dir.create(file.path(data.path, 'R')), FALSE)
dirR<-file.path(data.path, 'R')

# RAWdata directory, read only folder!
ifelse(!dir.exists(file.path(data.path, 'RAWdata')), dir.create(file.path(data.path, 'RAWdata')), FALSE)
dirRAW<-file.path(data.path, 'RAWdata')

# Output directory, here you will find your processed datasets, logs, simulation outputs and other processed things
ifelse(!dir.exists(file.path(data.path, 'output')), dir.create(file.path(data.path, 'output')), FALSE)
dirOutput<-file.path(data.path, 'output')

# Figure directory, here you will find your made figures. only generated files.
ifelse(!dir.exists(file.path(data.path, 'figures')), dir.create(file.path(data.path, 'figures')), FALSE)
dirFigs<-file.path(data.path, 'figures')

# Document directory, directory that contains the paper, 
ifelse(!dir.exists(file.path(data.path, 'doc')), dir.create(file.path(data.path, 'doc')), FALSE)
dirDoc<-file.path(data.path, 'doc')

# Cytoscape directory, directory that contains the cytoscape data, 
ifelse(!dir.exists(file.path(data.path, 'Cytoscape')), dir.create(file.path(data.path, 'Cytoscape')), FALSE)
dirCyto<-file.path(data.path, 'Cytoscape')

# Within the Cytoscape directory, directory that contains the normal network, 
ifelse(!dir.exists(file.path(dirCyto, 'Analogs_on')), dir.create(file.path(dirCyto, 'Analogs_on')), FALSE)
dir_analogs_on<-file.path(dirCyto, 'Analogs_on')

# Within the Cytoscape directory, directory that contains the normal network, 
ifelse(!dir.exists(file.path(dirCyto, 'MolNetEnhancer')), dir.create(file.path(dirCyto, 'MolNetEnhancer')), FALSE)
dir_correlation<-file.path(dirCyto, 'MolNetEnhancer')

# Within the Output directory, we make a directory for files we write away and read in again, to keep the output folder nice and clean.
ifelse(!dir.exists(file.path(dirOutput, 'write_read')), dir.create(file.path(dirOutput, 'write_read')), FALSE)
dirWrite<-file.path(dirOutput, 'write_read')

#print(list.dirs(data.path))

### provided by Peng Zhao, maker of the rosr package.
#' Create a .Rproj file
#'
#' @param project the name of the .Rproj file
#'
#' @return a .Rproj.file
#' @export
#'
#' @examples
#' oldwd <- getwd()
#' setwd(tempdir())
#' create_rproj('test')
#' setwd(oldwd)

create_rproj <- function(project){
  rproj <- file.path(dirOriginal, 'Scripts','rproj')
  file.copy(rproj, paste0(project, '.Rproj'))
}

setwd(dirR)
ifelse(exists("sub.experiment.name"), create_rproj(paste0(Project.name, "_", sub.experiment.name)), create_rproj(Project.name))

create_gitignore<-function(){
  gitign <- file.path(dirOriginal, 'Scripts', '.gitignore')
  file.copy (gitign, ".gitignore" )
}
setwd(data.path)
create_gitignore()


#remove objects not needed and save
rm(create_rproj)
rm(dirOriginal)

setwd(dirR)

save.image()
