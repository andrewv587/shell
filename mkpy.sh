#!/bin/bash
#make a tempalte python file
#default name default.py
file="default.py"
if [ $# -eq 1 ]; then
	file=$1
fi
if [ -e $file ]; then
	echo "the file exists"
	exit
fi
touch $file
chmod u+x $file
(cat <<EOF
#!/usr/bin/python
#Filename:$file
#Function:
#Author:Huang Weihang
#Email:huangweihang14@mails.ucas.ac.cn
#Data:`date +%F`
EOF
)>$file
vim $file

