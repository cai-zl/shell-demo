#!/opt/homebrew/bin/bash
i=1
while [ ${i} -lt 5 ]; do
  echo ${i}
  let "i++"
done

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
