echo "> Check the currently running spring server pid "
 CURRENT_PID=$(ps -ef | grep java | grep tomcat | awk '{print $2}')
echo "$CURRENT_PID" 
 if [ -z $CURRENT_PID ]; then
echo "> No applications are currently running and will not be shut down." 
else
echo "> kill -9 $CURRENT_PID" 

sleep 10
fi
SRC='/home/andrew/workspace/foodapp/dist/armstrong.ant.tear.war'
DST='//var/lib/tomcat9/webapps/ROOT/'

su andrew sh -c "ln -f '$SRC' '$DST'" && rm -f "$SRC"
 sleep 10
 cd //usr/share/tomcat9/bin
 ./startup.sh
 echo "Execution complete."
 