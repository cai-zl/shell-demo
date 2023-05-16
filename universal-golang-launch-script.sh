# Universal Go Language Launch Script
pid=0
args=${@}
if [ ${#args[@]} -ne 2 ]; then
  echo "two parameters are required"
  echo "the first parameter is 'start' , 'stop' or 'restart'"
  echo "the second parameter is the name of the service that needs to be started"
  exit 0
fi
action=args[1]
serverName=args[2]
function checkPid() {
  pid=$(ps -ef | grep ${serverName} | grep -v grep | awk '{print $2}')
}

# start
function start() {
  checkPid
  if [ ${pid} -eq 0 ]; then
    nohup ./${2} &
    if [ ${?} -eq 0 ]; then
      echo "---------------------------------"
      echo "start success, press CTRL+C to exit the log interface"
      echo "---------------------------------"
      sleep 1
      tail -f -n 500 nohup.out
    else
      echo "start fail"
      exit 0
    fi
  else
    echo "server is running,PID is ${pid}"
  fi
}

# stop
function stop() {
  checkPid
  if [ ${pid} -ne 0 ]; then
    kill -9 ${pid}
    echo "stop success"
  else
    echo "server is not running"
  fi
}

# restart
function restart() {
    stop
    sleep 1
    start
}

case ${action} in
"start") start ;;
"stop") stop ;;
"restart") restart ;;
*) echo "only support start , stop or restart" ;;
esac
