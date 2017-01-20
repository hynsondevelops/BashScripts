#!/bin/bash          

#Builds curl string
cStart='{"name":'
cDesc=',"description":'
cEnd='}'
doubleQuotes='"'
cName=$doubleQuotes$1$doubleQuotes

#Description Optional
if (( $# != 1 )); then #Description Given
	#Creates the given description from command line arguments
	args=("$@")
	argss=("${args[@]:1:$#}")
	for i in "${argss[@]}"
	do
		givenDesc+=$i
	   	givenDesc+=' ' 
	done
	cDescr=$doubleQuotes$givenDesc$doubleQuotes
else #Default Description
	cSample='Description made by makeRepo.sh BASH script by Adam Hynson'
	cDescr=$doubleQuotes$cSample$doubleQuotes
fi

#Creates string to be uesd by curl command
curlString=$cStart$cName$cDesc$cDescr$cEnd
echo $curlString

#POST to github (Change username to your github user name)
curl -u 'hynsondevelops' https://api.github.com/user/repos -d "$curlString"

#Change this to your github URL
githubURL="https://github.com/hynsondevelops/"
git=".git"
projectURL=$githubURL$1
git clone "$projectURL"

#Uses another script, copyRake.sh, to initialize the directory
./copyRake.sh $1
 
#Commits the changes to Github
cd $1
git add .
git commit -m "Initialized by BASH script, makeRepo.sh, by Adam Hynson"
git push origin master