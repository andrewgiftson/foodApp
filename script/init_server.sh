echo "> Check the currently running spring server pid "
 CURRENT_PID=$(ps -ef | grep java | grep tomcat | awk '{print $2}')
echo "$CURRENT_PID" 
 if [ -z $CURRENT_PID ]; then
echo "> No applications are currently running and will not be shut down." 
else
echo "> kill -9 $CURRENT_PID" 

sleep 10
fi
echo "/home/andrew/workspace/foodapp/src /var/www/html"
cp -r /home/andrew/workspace/foodapp/src /var/www/html


 echo "Execution complete."
 
