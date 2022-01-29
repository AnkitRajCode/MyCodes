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