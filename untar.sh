#! /bin/bash

#===============================================================================
#
#          FILE:  untar.sh
#
#         USAGE:  ./untar.sh <tar-file>
#
#   DESCRIPTION:  Most of the time I cannot remember the parameters to untar, so I created an utility script to do this
#
#       OPTIONS:  <tar-file>: The path or name of the tar file that you want to untar
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Nicolas De Smyter, nicolasdesmyter+github@gmail.com
#       COMPANY:  ---
#       VERSION:  1.0
#       CREATED:  2018-12-19
#      REVISION:  ---
#       LICENSE:  GNU General Public License v3.0
#===============================================================================

tar xvzf $1
