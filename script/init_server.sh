echo "> Check the currently running spring server pid "
 CURRENT_PID=$(ps -ef | grep java | grep tomcat | awk '{print $2}')
echo "$CURRENT_PID" 
 if [ -z $CURRENT_PID ]; then
echo "> No applications are currently running and will not be shut down." 
else
echo "> kill -9 $CURRENT_PID" 

sleep 10
fi
rm -rf //var/lib/tomcat9/webapps/foodApp //var/lib/tomcat9/webapps/foodApp.war
echo "File is removed //var/lib/tomcat9/webapps/foodApp //var/lib/tomcat9/webapps/foodApp.war"
cp /home/andrew/workspace/foodapp/dist/*.war  /var/lib/tomcat9/webapps
echo "file is moved /home/andrew/workspace/foodapp/dist/*.war  /var/lib/tomcat9/webapps"
 sleep 10
 cd //usr/share/tomcat9/bin
 ./startup.sh
 echo "Execution complete."
 
