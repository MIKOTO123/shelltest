my_array=(A B "C" D)

echo "第一个元素为: ${my_array[0]}"
echo "第二个元素为: ${my_array[1]}"
echo "第三个元素为: ${my_array[2]}"
echo "第四个元素为: ${my_array[3]}"



echo "数组的元素为: ${my_array[*]}"
echo "数组的元素为: ${my_array[@]}"



words="aaa bbb ccc"
#字符串转数组，空格是分隔符
array=(${words// / })
echo ${array[@]}



#字符串不转换为数组，在循环实现以空格为分隔符打印每个成员
for word in ${words}; do
	    echo ${word}
done



echo ${#array[*]}   #输出数组个数
echo ${#array[@]}   #输出数组个数
