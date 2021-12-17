echo "> Check the currently running spring server pid "
 CURRENT_PID=$(ps -ef | grep java | grep tomcat | awk '{print $2}')
echo "$CURRENT_PID" 
 if [ -z $CURRENT_PID ]; then
echo "> No applications are currently running and will not be shut down." 
else
echo "> kill -9 $CURRENT_PID" 
kill -9 $CURRENT_PID
sleep 10
fi
 rm -rf /usr/share/tomcat9/armstrong.ant.teat /usr/share/tomcat9/armstrong.ant.teat.war
 echo nohup mv /home/andrew/workspace/Online food order/dist/*.war /usr/share/tomcat9/armstrong.ant.teat.war >> /root//home/andrew/workspace/Online food order/logs/springtestprojectSys.log &
  mv /home/andrew/workspace/Online food order/dist/*.war /usr/share/tomcat9/armstrong.ant.teat.war
 sleep 10
 cd /usr/share/tomcat9/bin
 ./startup.sh
 echo "Execution complete."