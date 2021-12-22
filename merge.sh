
#!/bin/bash 
#定义合并文件方法
list_alldir(){
# 1.递归文件目录
for file2 in `ls -A $1`
do
if [ -d "$1/$file2" ];then
#echo "$1/$file2"
list_alldir "$1/$file2"
elif [ -f  "$1/$file2" ];then
    #2.如果后缀是.kt 或者.ejs，合并文件
	if [[ "$1/$file2" == *.kt ]] || [[ "$1/$file2" == *.kt ]] ;then
	echo "\n" >> out.txt
	echo "$1/$file2" >> out.txt
	echo "\n" >> out.txt
	cat "$1/$file2" >> out.txt
	fi
fi
    done
}
#代码目录，生成的out.txt为当前.sh所在目录
list_alldir ./ C:/\Users/\Administrator/\Desktop/\ces1
