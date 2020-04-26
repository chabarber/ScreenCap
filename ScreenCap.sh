#!/bin/bash

#**************************************#
#            ScreenCap.sh              #
#        written by VoiDedSec          #
#           April 13, 2020             #
#                                      #
#    Screenshots Websites from File    #
#**************************************#



#filename is hardcoded to look for this file in the current directory
filename='test.txt'

#n is the count
n=1

#flair for the user the program is running
echo "Loading..."

#reading each line
while read line; do

#calls the program cutycapt accepts a url from variable line
#count n is incremented every line therefore every picture
cutycapt --url=$line --out=$n.jpeg --smooth

#this increments the count
n=$((n+1))

#while loop runs from the variable filename
done < $filename
