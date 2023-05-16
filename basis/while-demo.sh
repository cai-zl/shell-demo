#!/opt/homebrew/bin/bash
i=1
while [ ${i} -lt 5 ]; do
  echo ${i}
  let "i++"
done

# [] 中的条件判断无法使用 >= <=之类的
# (()) 中的条件判断可以使用
arr=("S" "H" "E" "L" "L")
len=${#arr[@]}
index=0
while ((${index} <= ${len})); do
  echo ${arr[index]}
  let "index++"
done

# 无限循环
# while
# do

# done
#
# while true
# do
#
# done
