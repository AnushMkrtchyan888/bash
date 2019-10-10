#!/bin/bash
echo "Hello, process capturing starts"
RAV=$(ps -o s,pid,user,%mem,command ax | grep -v PID | sort -bnr -k4 | awk '/[0-9]*/{print $1 " - " $2 " - " $3 "-" $4 " - " $5}')

if [[ -d ~/Processes ]]
 then
    echo "Removing the older folder"
    rm -rf ~/Processes
fi
(mkdir ~/Processes)
(echo "$RAV" > ~/Processes/process.txt )

for i in {1..300}
do
STR=$(find ~/Processes/process.txt |head -n $i | tail -n +$i)
if [[ $STR =~ ^S ]]
then
(echo "$STR" >>~/Processes/Stopped.txt)
fi
if [[ $STR =~ ^R ]]
then
(echo "$STR" >>~/Processes/Running.txt)
fi
if [[ $STR =~ ^I ]]
then
(echo "$STR" >>~/Processes/Interrupt.txt)
fi
if [[ $STR =~ ^D ]]
then
(echo "$STR" >>~/Processes/Daemons.txt)
fi
if [[ $STR =~ ^Z ]]
then
(echo "$STR" >>~/Processes/Zombie.txt)
fi
if [[ $STR =~ ^W ]]
then
(echo "$STR" >>~/exam/Waiting.txt)
fi	
done
echo "Processes added in the /processType.txt/ fails from the Processes folder "

