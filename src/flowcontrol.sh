




a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi


for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done


for (( i = 0; i < 5; i++ )); do
    echo $i
done


i=5
while [ $i -gt 0 ]; do
   let i--
   echo $i
done


#无线循环
while [ true ]; do
  echo $(date +%s)
  sleep 1s;
done


echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的网站名: '
while read FILM
do
    echo "是的！$FILM 是一个好网站"
done

a=0

until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done




#这里注意一下,shell的case只要匹配到一条就不会继续往下匹配
read -p "input x val:" x
case $x in
1)
  echo "我进入了第一个条件"
  ;;
2)
  echo "我进入了第二个条件"
  ;;
3)
  echo "我进入了第三个条件"
  ;;
3|4|5|6)
  echo "我进入了3456"
  ;;
*)
  echo "什么选项都不匹配"
  ;;
esac




while :
do
    echo -n "输入 1 到 5 之间的数字:"
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
            break    #这里仅仅跳出当前 循环,,,break 2 跳出2层循环
        ;;
    esac
done




while :
do
    echo -n "输入 1 到 5 之间的数字: "
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的!"
            continue #和php的continue一样
            echo "游戏结束"
        ;;
    esac
done

