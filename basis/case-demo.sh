#!/opt/homebrew/bin/bash
echo "输入 1～4 选择菜单"
read num
# 也可以使用字符串
case ${num} in
1)
  echo "个人中心"
  ;;
2)
  echo "系统配置"
  ;;
3)
  echo "用户管理"
  ;;
4)
  echo "流程管理"
  ;;
*)
  echo "无效的菜单选项"
  ;;
esac
