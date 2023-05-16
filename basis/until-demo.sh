#!/opt/homebrew/bin/bash
# 类似while循环，只是条件为false是才运行
a=0
until [ ! ${a} -lt 10 ]; do
  echo ${a}
  let "a++"
done
