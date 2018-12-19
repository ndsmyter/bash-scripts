#! /bin/bash

#===============================================================================
#
#          FILE:  update_version.sh
#
#         USAGE:  ./update_version.sh
#
#   DESCRIPTION:  This script will request a new version for the whole Maven
#                 project it is currently in. You can see it is actually no more
#                 than an utility method so I don't have to remember the
#                 parameters.
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
#       LICENSE:  GNU General Public License v3.0
#===============================================================================

mvn release:update-versions -DautoVersionSubmodules=true
