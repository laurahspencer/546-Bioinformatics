#/bin/bash
set -e
set -u
set -o pipefail

# set variables
GeoduckRepo="/Users/shlaura3/Documents/SAFS/FISH_546_Bioinformatics/546-Bioinformatics/2016-10_Geo-Ann-Project/"
newdirectory="IGV_track_files"

# change directory to Geoduck Annotation Project directory
cd "$GeoduckRepo"

# make new directory 
mkdir "$newdirectory"

# locate .gff files to move to newly created directory
find ../2016-10_Geo-Ann-Project/analyses -name "*.gff" | xargs -I '0' mv '0' "$newdirectory"

# display confirmation of move
echo $?
if [ $? -eq 0 ];
then
	echo .gff files moved! && pwd && ls $newdirectory
else
	echo "Unsuccessful! try again."
fi 