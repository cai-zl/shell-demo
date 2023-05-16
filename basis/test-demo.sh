#!/opt/homebrew/bin/bash
# test命令 简写 []
# 与 -a
# 或 -o

# 字符串
#=	等于则为真
#!=	不相等则为真
#-z 字符串	字符串的长度为零则为真
#-n 字符串	字符串的长度不为零则为真
str="hello"
if [ -n "$str" ]; then
  echo "字符串长度不为0"
fi

if [ -z "$str" ]; then
    echo "字符串长度为0"
fi

if [ "$str" = "hello" ]; then
    echo "$str = hello"
fi

if [ "$str" != "hello" ]; then
    echo "$str != hello"
fi

# 数字
#-eq	等于则为真
#-ne	不等于则为真
#-gt	大于则为真
#-ge	大于等于则为真
#-lt	小于则为真
#-le	小于等于则为真
num=4
if [ "$num" -eq 4 ]; then
    echo "等于则为真"
fi

# 文件
#-e 文件名	如果文件存在则为真
#-r 文件名	如果文件存在且可读则为真
#-w 文件名	如果文件存在且可写则为真
#-x 文件名	如果文件存在且可执行则为真
#-s 文件名	如果文件存在且至少有一个字符则为真
#-d 文件名	如果文件存在且为目录则为真
#-f 文件名	如果文件存在且为普通文件则为真
#-c 文件名	如果文件存在且为字符型特殊文件则为真
#-b 文件名	如果文件存在且为块特殊文件则为真
