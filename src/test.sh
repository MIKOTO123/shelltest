a=1
b=2
if test $a = $b
then
	echo "相等"
else
	echo "不相等"
fi


if test -e ./notFile -o -e ./bash
then
	echo '至少有一个文件存在!'
else
	echo '两个文件都不存在'
fi



