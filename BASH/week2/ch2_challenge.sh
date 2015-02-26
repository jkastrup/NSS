#!/bin/bash
# Challenge
# Use variables, command substitution, and string formatting to make a small
#+summary of some of the system information.  Print the result to the screen
#+and write some information to a file

#initial variables
bold="\033[1m"
normal="\033[0m"
mydate=$(date +"%m-%d-%Y")
logfile="$mydate"_report.log

#Free space available taken from exercise solution
freespace=$(df -h / | grep -E "\/$" | awk '{print $4}')

echo -e $bold"System Information for "$HOSTNAME":"$normal
printf "\tSystem type:\t%s\n" $MACHTYPE
printf "\tBash Version:\t%s\n" $BASH_VERSION
printf "\tFree Space:\t%s\n" $freespace
printf "\tCreated on:\t%s\n" $mydate
echo -e "A summary of this information has been saved to $bold$logfile$normal

cat <<- EoF > $logfile
	This is a Bash script generated file.
	Below is the system information.
EoF

printf "SYS:\t%s\n" $MACHTYPE >> $logfile
printf "BASH:\t%s\n" $BASH_VERSION >> $logfile
