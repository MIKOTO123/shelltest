
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







