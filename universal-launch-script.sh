#!/opt/homebrew/bin/bash
# Universal Go Language Launch Script
# 获取第一个参数 'start', 'stop', 'restart', 'status'
action=$1
if  [ $action = "" ]; then
  echo "the parameter is 'start', 'stop', 'restart', 'status'"
  exit 0
fi
# 服务名称
serverName="test"
# 日志文件
serverLog="output.log"
function startCmd() {
  # 自定义启动命令
  nohup ./$serverName qq -c ./config/qq-config.ini >$serverLog 2>&1 &
  return $?
}

function logCmd() {
  # 自定义日志查看命令
  echo "use command tail -f $serverLog view log"
}

# 检查进程ID
pid=0
function checkPid() {
  pid=$(ps -ef | grep $serverName | grep -v grep | awk '{print $2}')
}

# 启动函数
function start() {
  checkPid
  if [ -z "$pid" -o "$pid" = 0 ]; then
    startCmd
    if [ $? = 0 ]; then
      echo "---------------------------------"
      echo "start success"
      echo "---------------------------------"
      sleep 1
      logCmd
    else
      echo "start fail"
      exit 0
    fi
  else
    echo "server is running,PID is $pid"
  fi
}

# status
function status() {
  checkPid
  if [ -z "$pid" -o "$pid" = 0 ]; then
    echo "server is not running"
  else
    echo "server is running,PID is $pid"
  fi
}

# stop
function stop() {
  checkPid
  if [ ! -z "$pid" -a "$pid" != 0 ]; then
    kill -9 $pid
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

case $action in
"start") start ;;
"stop") stop ;;
"restart") restart ;;
"status") status ;;
*) echo "only support start , stop or restart" ;;
esac
