#!/bin/bash

i=1

while [ $i = 1 ] 
do

declare -i minute
minute=60

declare -i five
five=5*$minute  

declare -i twentyfive
twentyfive=25*$minute


zenity --question --text="TMES OUT!" --title="PAUS?" --no-wrap --ok-label "PAUS = 5min" --cancel-label "WORK = 25min"

if [ $? = 0 ]; then
sleep $five

elif [ $? = 1 ]; then
sleep $twentyfive

else
echo "done"
i=0
fi
done
