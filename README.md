# Bash Scripts
This directory contains BASH scripts for working with Github. 

##Current List:

###copyRake.sh
Purpose: Copies contents of a setup directory to another directory. 

Setup Required: The script assumes that ~/Templates/RSpecSetup/ exists. This is a folder that contains setup for a Ruby project to be tested with RSpec. The folder is included in this repo as RSpecSetup.

Arguments: 
			1. Directory you wish to copy to.   

###ls.sh
Purpose: Lists all files within ~/bin which is where BASH scripts reside.   

Setup Required: The script assumes that ~/bin exists and contains BASH scripts.

Arguments: N/A 

###makeRepo.sh
Purpose: Makes a new Github repository with given name and description. The repository is initialized with copyRake.sh and then pushed to Github. 

Setup Required: The script needs your Github account. Replace all occurences of hynsondevelops with your own Github account name. 

Arguments: 	1. Github repository name (no spaces)
	
		   	2. Github repository description (spaces allowed)

###shortClone.sh
Purpose: Clones a Github directory from your own account with only the directory name.

Setup Required: The script needs your Github account. Replace hynsondevelops with your own Github account name. 

Arguments: 
			1. Github repository name