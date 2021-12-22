echo "> Check the currently running spring server pid "
 CURRENT_PID=$(ps -ef | grep java | grep tomcat | awk '{print $2}')
echo "$CURRENT_PID" 
 if [ -z $CURRENT_PID ]; then
echo "> No applications are currently running and will not be shut down." 
else
echo "> kill -9 $CURRENT_PID" 

sleep 10
fi
chmod 0777
sudo -s rm -rf //var/lib/tomcat9/webapps/ROOT/armstrong.ant.tear //var/lib/tomcat9/webapps/ROOT/armstrong.ant.tear.war
echo nohup mv /home/andrew/workspace/'Online food order'/dist/*.war /usr/share/tomcat9/armstrongant.ant.tear.war >> 
 sudo -s mv /home/andrew/workspace/'Online food order'/dist/*.war //var/lib/tomcat9/webapps/ROOT/armstrong.ant.tear.war
 sleep 10
 cd //usr/share/tomcat9/bin
 ./startup.sh
 echo "Execution complete."
 