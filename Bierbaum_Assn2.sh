#! /bin/bash
#Use shebang or bash to analyze this script

touch Bierbaum_child.sh
#create an empty child script file 

echo "#! /bin/bash" > Bierbaum_child.sh
#displays in the child script to use shebang or bash to analyze the commands below

echo "touch Final_Run" >> Bierbaum_child.sh
#displays in the child script to create a new empty file

echo "grep ID BTS_data.txt | cut -f1,2,4 > Final_Run" >> Bierbaum_child.sh
#print the line that includes ID (heading) from BTS_data.txt file
#use a pipe to further analyze the output as the new input to cut out specific columns
#cut out columns 1, 2, and 4, and write (>) those columns to the file Final_Run
#that entire command was echoed or displayed in the script Bierbaum_child.sh

echo "grep BTS0[1-8] BTS_data.txt | cut -f1,2,4 | sort -k3gr | column -t >> Final_Run" >> Bierbaum_child.sh
#print the lines with IDs that start with BTS0- and end with these numbers [1-8] as increments of ten
#For exmample 10-19, 20-29, 30-39, 40-49, 50-59, 60-69, 70-79, and 80-89
#use a pipe to further analyze the output to cut out columns 1, 2, and 4
#use another pipe to sort the cut out files by column 3 (k3), specifically general numeric REVERSE order (gr)
#the last pipe was used to make the output tabular so the headings lined up with the values below
#the information is appended (>>) to the existing file Final_Run
#that entire command was echoed or displayed in the script Bierbaum_child.sh

echo "gzip Final_Run" >> Bierbaum_child.sh
#gzip Final_Run command is displayed in the script Bierbaum_child.sh
#this will command the child script (Bierbaum_child.sh) to compress the output file (Final_Run)


./Bierbaum_child.sh
#run the child bash script


