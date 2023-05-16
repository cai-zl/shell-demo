#!/opt/homebrew/bin/bash
# 返回值的范围为0到255。如果返回值大于255，则只会用低8位进行截断。例如，如果函数返回256，则其实是返回0。
serverPid=0
function getPid() {
    serverPid=$(ps -ef | grep ${1} | grep -v grep | awk '{print $2}')
}
serverName="main.go"
getPid ${serverName}
echo "${serverName} 的PID: ${serverPid}"
