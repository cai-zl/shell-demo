#!/opt/homebrew/bin/bash
# 读取输入的数据
read num
# 条件判断的中括号前面和后面必须有空格
if [ ${num} -eq 1 ]; then
  echo "条件1"
elif [ ${num} -eq 2 ]; then
  echo "条件2"
else
  echo "条件无效"
fi
