#! /bin/bash

#===============================================================================
#
#          FILE:  clean_maven_projects.sh
#
#         USAGE:  ./clean_maven_projects.sh
#
#   DESCRIPTION:  This script will find all the "pom.xml" files on the disk.
#                 The paths to these files are listed in the ${tmp_file} file.
#                 After all "pom.xml" files are found, the script will start looping through them one by one
#                 For every file, it will execute the command maven clean command to remove data that isn't used anymore
#                 In the end it will cleanup everything and go back to the folder where the command started
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Nicolas De Smyter, nicolasdesmyter+github@gmail.com
#       COMPANY:  ---
#       VERSION:  1.0
#       CREATED:  2018-12-19
#      REVISION:  ---
#===============================================================================

tmp_file=/tmp/files_to_cleanup.txt
cwd=${pwd}

echo "Finding all the pom.xml files on the disk..."
sudo find / -name pom.xml -print > ${tmp_file} 2> /dev/null

# Count the files that were found
files=$(cat "${tmp_file}" | wc -l)
echo "${files} files found"

# Loop over files
while read p; do
    # Remove the "pom.xml" part at the end of the path, to get the parent director
    folder=${p:0:-7}
    echo "${folder}"
    cd "${folder}"
    # Execute "mvn -e clean" and make sure every output is sent to /dev/null (so all output is ignore)
    mvn -e clean > /dev/null 2>&1
done < ${tmp_file}

# Cleanup and back to original folder
cd ${cwd}
rm ${tmp_file}
