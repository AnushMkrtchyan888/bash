Description

The bash script for capturing the Linux processes date and adding in the files by process type.

Requirements
Linux operating system

Do the following step before

$. git clone https://github.com/AnushMkrtchyan888/bash.git

Run automated script
$. open terminal 
$. cd to the ProcessCapturing.sh

To run the script you need to write the run command provided below.

$. run the script with ./ProcessCapturing.sh command

To run the script every day(minute, hour, month, year) automatically you need to add crontab command.

$ open terminal
$ run the crontab -e command
$ switch to the Insert mode and go to the end of the opened document
$ set the crontab command for running on a regular schedule and save

The results you can see in the ~/Processes folder. Processes added in the *.txt fils by process type. All processes added in the process.txt file.
