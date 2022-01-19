while [ 1 ]	
do
echo "[start] [stop] [kill] [reload] [restart] [status] [exit]"		
echo  "Enter your choice "
read x
case $x in							
start)								
echo  "Starting clock"
xclock -update 1 
;;
stop)							
echo -n "Stoping clock"
kill -9 $(pidof xclock)
;;
exit)							
break
;;
*) echo "invalid input"
;;
esac
done
