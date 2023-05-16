#!/opt/homebrew/bin/bash
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
