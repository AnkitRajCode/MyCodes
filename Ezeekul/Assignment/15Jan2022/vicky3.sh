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

#!/bin/bash
#Algorithm:-
#1) I am taking signal from command line argument and using it in switch case for trigger the signals to xclock process.
#2) Here it is fetching the process id by using 'preg' command which returns the pid of process.
#Program:-
echo "Enter the signals among these [START] [STOP] [STATUS] [KILL] [RESTART] [RELOAD]"
case $1 in
        "START")#starting the xclock process
                if pgrep -x "xclock"  # here by using pgrep we are searching the exact pattern 'xclock' among all the process and fetching the pid
                then
                        echo "xclock is already running..."
                else
                        echo "Starting..."
                        xclock & #running xclock in background
                fi
                ;;
        "STOP")#stopping the xclock process
                if pgrep -x "xclock"
                then
                        echo "xclock process is stopped"
                        kill -19 $( pgrep -x "xclock") #stopping xclock process by sending the SIGSTOP (19)
                else
                        echo "No xclock process is running..."
                fi
                ;;
        "STATUS")  #chacking the status of xclock process
                if pgrep -x "xclock"
                then
                     echo "xclock is running..."
                else
                     echo "No xclock process is running..."
                fi
                ;;
        "RESTART") #restart the xclock process after stopping the xclock
                        echo "xclock process is restarted..."
                        kill -18 $( pgrep -x "xclock" ) #restarting the stopped xclcok process by sending SIGCONT (18)
                ;;
        "KILL") #killing the xclock process
                if pgrep -x "xclock"
                then
                        echo "Killing the xclock process..."
                        kill -9 $( pgrep -x "xclock") #killing the xclock process by sending SIGKILL (9)
                else
                        echo "No xclock process is running..."
                fi
                ;;
        "RELOAD")#reloading the xclock process
                if pgrep -x "xclock"
                then
                        echo "Reloading the xclock process..."
                        kill -9 $( pgrep -x "xclock" ) #first killing the process by sending SIGKILL (9)
                        xclock & #then starting the xclock process in background
                else
                        echo "No running process..."
                fi
                ;;
        *) echo "INVALID REQUEST" #invalid request
                ;;
esac
