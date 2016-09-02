#!/bin/bash
#make a template bash file
#default name:default.sh
file="default.sh"
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
#!/bin/bash
#Filename:$file
#Function:
#Author:Huang Weihang
#Email:huangweihang14@mails.ucas.ac.cn
#Data:`date +%F`
EOF
)>$file
vim $file

