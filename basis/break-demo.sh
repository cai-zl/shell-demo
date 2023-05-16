#!/opt/homebrew/bin/bash
# break 结束当前循环
# continue 跳过本次循环
a=1
while ((${a} < 1000)); do
  if ((${a} % 7 == 0)); then
    echo "${a}"
    let 'a++'
  else
    let 'a++'
    continue
  fi
done
