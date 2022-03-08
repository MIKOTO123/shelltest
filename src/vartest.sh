
#readonly只读
myUrl="https://www.google.com"
readonly myUrl
myUrl="https://www.runoob.com" #会报错

your_name="alibaba"

unset your_name
echo $your_name #不会输出任何东西


#注意双引号和单引号的区别
#双引号是能引用变量的,可以出现转义字符


your_name="runoob"
str="Hello, I know you are \"$your_name\"! \n"
echo -e $str  # -e 是开启转义字符



your_name="runoob"
# 使用双引号拼接
greeting="hello, "$your_name" !" #注意这里不用字符链接字符串
greeting_1="hello, ${your_name} !"
# 使用单引号拼接
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'   #这里不会输出变量
echo $greeting_2  $greeting_3





string="abcd"
echo ${#string}
echo ${string:1:4}



for skill in java php python
do
	echo $skill;
done


#查找子字符i或者o
string="runoob is a great site"
echo `expr index "$string" io`  # 输出 4




array=(java php go python)

echo ${array[0]}

echo ${array[@]}


echo ${array[*]}
echo ${#array[*]}




:<<EOF
注释内容...
注释内容...
注释内容...
EOF


var="http://www.runoob.com/linux/linux-shell-variable.html"

s1=${var%%t*}
s2=${var%t*}
s3=${var%%.*}
s4=${var#*/}
s5=${var##*/}
:<<'
关于字符串的截取%，#的使用方法
原字符串为：http://www.runoob.com/linux/linux-shell-variable.html
%%t*的效果：h
%t*的效果：http://www.runoob.com/linux/linux-shell-variable.h
%%.*的效果：http://www
#*/的效果：/www.runoob.com/linux/linux-shell-variable.html
##*/的效果：linux-shell-variable.html
'
