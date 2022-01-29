# Start,stop,Restart,Kill,Status

case $1 in
        'Start')
                if pgrep -x 'xclock';
                then
                        echo 'Running'
                else
                        echo 'Starting'
                        xclock &
                fi
                ;;
        'Stop')
                if pgrep -x 'xclock';
                then
                        echo 'Stopping'
                        kill -20 $(pgrep -x 'xclock')
                else
                        echo 'Nothing to Stop'

                fi
                ;;
        'Restart')
                 if pgrep -x 'xclock';
                 then
                        echo 'Restarting'
                        kill -18 $(pgrep -x 'xclock')
                else
                        echo 'Nothing to restart'
                fi
                ;;
esac
