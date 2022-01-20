#Name - Ashish Kumar Mishra
#Roll Number - 1906466
#Description - This script is used to control the xclock Process through command line.

#Execution - "to run the script do 'bash q3.sh [start] | [stop] | [restart] | [reload] | [status]' , we pass arguments as command line arguments."

#Algorithm - "when we start the script , a PID of the xclock process is stored in the process.pid file.

#To stop the process 'kill -19 $(pgrep -x "xclock")' command is used as the process will be running in background."

#To restart the process 'kill -18 $( pgrep -x "xclock" )' command is used as the process will be restart without changing the PID of xclock process.

#To reload , first the process is getting killed and then starts the process again with new PID.

#To kill the process we are removing the file process.pid which stores the the PID of the process.

#To check the status of the process, we check the presence of file process.pid in the directory, If the file is present the process is in running state and if it's not the process is terminated.

#!/bin/bash
# create file
echo "--------------------------------"
echo "     XCLOCK PROCESS"
echo "-------------------------------"
file=$1
case $file in
    start)
        pid_file="process.pid"
        echo $$ > $pid_file
        echo "process.pid file created in directory"
        xclock &
    ;;
    stop)
        
        if pgrep -x "xclock"
        then
            kill -19 $(pgrep -x "xclock")
            rm -f "./process.pid";
        else
            echo "Process is not running"
        fi
        
    ;;
    restart)
        if [ ! -f "./process.pid" ];
        then
            pid_file="process.pid"
            echo $$ > $pid_file
        else
            echo "Restarting process with process id $( pgrep -x "xclock" )"
            
            kill -18 $( pgrep -x "xclock" )
        fi
        
    ;;
    reload)
        
        if [ ! -f "./process.pid" ];
        then
            echo "Please start the process to reload it."
        else
            echo "Killing Process with pid $( pgrep -x "xclock" )"
            kill -9 $( pgrep -x "xclock" )
            xclock &
            echo "Started a new process with process id $( pgrep -x "xclock" )"
        fi
        
    ;;
    kill)
        rm -f "./process.pid";
        kill -9 $(pgrep -x "xclock")
        
    ;;
    status)
        if [ ! -f "./process.pid" ];
        then
            echo "Process Terminated."
        else
            echo "Process Running with process id $( pgrep -x "xclock" )"
            
        fi
    ;;
    *)
        echo "q3.sh requires [start] | [stop] | [restart] | [reload] | [status]";
esac

# while :
# do
#     clear
#     #Display Menu
#     echo "Xclock Process Menu"
#     echo "--------------------------------"
#     echo "     M A I N - M E N U"
#     echo "-------------------------------"
#     echo "start. Start The Process."
#     echo "Stopped. Stop The Process."
#     echo "reload. Reload The Process."
#     echo "restart. Reload The Process."
#     echo "kill. Reload The Process."
#     echo "status. Reload The Process."
#     echo "exit. Exit"
#     # get input from the user
#     read -p "Enter your choice [ start, Stop, reload, restart , kill, status ,exit ] " choice

#     case $choice in
#         start)
#             pid_file="process.pid"
#             echo $$ > $pid_file

#         ;;
#         Stop)
#             # xargs xclock
#             cat process.pid | xargs kill
#             if [ ! -f "/home/ashish/Desktop/Labs/epik/process.pid" ];
#             then
#                 echo "Please start the process to stop it."
#             else
#                 rm -f "/home/ashish/Desktop/Labs/epik/process.pid";
#             fi
#         ;;
#         kill)
#             rm -f "/home/ashish/Desktop/Labs/epik/process.pid";
#         ;;
#         status)
#             if [ ! -f "/home/ashish/Desktop/Labs/epik/process.pid" ]; then
#                 echo "Process Terminated"
#                 # echo $$ > $pid_file
#             else
#                 echo "Found .pid file named . Instance of application already running."
#                 exit
#             fi
#         ;;
#         exit)
#             exit 0
#         ;;
#         *)
#             echo "Error: Invalid option..."
#             read -p "Press [Enter] key to continue..." readEnterKey
#         ;;
#     esac
# done

