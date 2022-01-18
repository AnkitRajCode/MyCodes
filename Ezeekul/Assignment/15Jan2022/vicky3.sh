#!/bin/bash
echo "Enter the signals among these [START] [STOP] [STATUS] [KILL] [RESTART] [RELOAD]"
case $1 in
        "START")
                if pgrep -x "xclock"
                then
                        echo "xclock is already running..."
                else
                        echo "Starting..."
                        xclock &
                fi
                ;;
        "STOP")
                if pgrep -x "xclock"
                then
                        echo "xclock process is stopped"
                        kill -19 $( pgrep -x "xclock")
                else
                        echo "No xclock process is running..."
                fi
                ;;
        "STATUS")
                if pgrep -x "xclock"
                then
                        echo "xclock is running..."
                else
                        echo "No xclock process is running..."
                fi
                ;;
        "RESTART")
                if pgrep -x "xclock"
                then
                        echo "xclock is already is running..."
                else
                        echo "xclock process is restarted..."
                        kill -18 $( pgrep -x "xclock" )
                fi
                ;;
        "KILL")
                if pgrep -x "xclock"
                then
                        echo "Killing the xclock process..."
                        kill -9 $( pgrep -x "xclock")
                else
                        echo "No xclock process is running..."
                fi
                ;;
        "RELOAD")
                if pgrep -x "xclock"
                then
                        echo "Reloading the xclock process..."
                        kill -9 $( pgrep -x "xclock" )
                        xclock &
                else
                        echo "No running process..."
                fi
                ;;
        *) echo "INVALID REQUEST"
                ;;
esac