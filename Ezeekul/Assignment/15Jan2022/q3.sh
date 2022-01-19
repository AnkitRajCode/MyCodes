#!/bin/bash
#Desc : This code is used to perform process on xclock like start, stop,... 
#Algo: Shell Script for start & Stop xclock using switch case and taking command throught command line args and starting the clock by involking xclock using that command and stoping through kill command by using process id of xclock.
#Run: bash Question3.sh START / STOP 

echo "Enter the command line args [START] / [STOP]"
case $1 in
    "START")
        echo "Starting..."
	    xclock &
        ;;
    "STOP")
        echo "Stopped"
	    kill $(pidof xclock)
        ;;
    *) echo "INVALID REQUEST"
        ;;
esac