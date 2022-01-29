#!/bin/bash

#Desc : This code is used to perform process on xclock like start, stop,... 

#Algo: Shell Script for processing xclock using switch case and taking command throught command line args and starting the clock by involking xclock and storeing its pid in file in directory using $$ > $pid script for stoping I m using kill -19 using this command processs will run in background kill -18 is use to restart without changing the PID of clock in reload previous pid will be deleted and new pid will be store to fil using $$ > $pid in status we the process id in .pid file according to that process continues then kill is to stop the clock 

#Run: bash Question3.sh start / stop / restart / status / reload  / kill

tempfile=${1^^}
echo $1
case $tempfile in
    "START")
        pid="proc.pid"
        echo $$ > $pid
        echo "pid file created and id of process is stored in it"
        xclock &
    ;;
    "STOP")
        if pgrep -x "xclock"
        then
            kill -19 $(pgrep -x "xclock")
            rm -f "./proc.pid";
        else
            echo "The process is not running"
        fi
    ;;
    "RESTART")
        if [ ! -f "./proc.pid" ];
        then
            pid="proc.pid"
            echo $$ > $pid
        else
            echo "Restarting..."
            kill -18 $( pgrep -x "xclock" )
        fi
    ;;
    "STATUS")
        if [ ! -f "./proc.pid" ]; then
		"Stop.."
        else
            echo "Running..."
        fi
    ;;
    "RELOAD")
        if [ ! -f "./proc.pid" ];
        then
            echo "Start again"
        else
            echo "Killing last process..."
            kill -9 $( pgrep -x "xclock" )
            xclock &
            echo "Starting new process..."
        fi
    ;;
    "KILL")
        rm -f "./proc.pid";
        kill -9 $(pgrep -x "xclock")
    ;;
    *)
    echo "Question3.sh  start / stop / restart / status / reload  / kill";
esac