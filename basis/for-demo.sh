#!/opt/homebrew/bin/bash
# 遍历数组
arr=(1 2 3 4 5 4)
for i in ${arr[@]}; do
  echo "The value is: ${i}"
done

# fori
for i in {1..10}; do
  echo "第${i}次循环"
done
