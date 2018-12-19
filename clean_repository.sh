#! /bin/bash

#===============================================================================
#
#          FILE:  clean_repository.sh
#
#         USAGE:  ./clean_repository.sh
#
#   DESCRIPTION:  If you use several different projects, with a different code
#                 base, your maven repository gets filled up rather fast.
#                 To make sure it doesn't get out of hand, you can clean up
#                 using this script. All files older than 7 days are removed.
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

find ~/.m2/repository -mtime +7 -exec rm {} \;
