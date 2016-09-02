#!/bin/bash
#sqoop import  --connect jdbc:mysql://localhost:3306/hadoop \
#	 --username root --password roomroom \
#	--driver com.mysql.jdbc.Driver  --split-by id -m 1 \
#	--query 'select id,name from students where $CONDITIONS' --fields-terminated-by \
#	"\t" --hive-import --hive-table students --target-dir student

#sqoop import --connect jdbc:mysql://localhost:3306/hadoop \
#	 --username root --password roomroom \
#	--driver com.mysql.jdbc.Driver  --split-by id -m 1 \
#--table students --hbase-table demo_sqoop2hbase \
#--hbase-create-table --hbase-row-key id --column-family abc 

sqoop export --connect jdbc:mysql://localhost:3306/hadoop \
	 --username root --password roomroom \
	--driver com.mysql.jdbc.Driver   -m 1 \
	--export-dir /user/hive/warehouse/students --table abc \
	 --input-fields-terminated-by "\t" \
	 --input-lines-terminated-by "\n"
#sqoop import  --connect jdbc:mysql://localhost:3306/hadoop \
#	 --username root --password roomroom \
#	--driver com.mysql.jdbc.Driver  --split-by id -m 1 \
#	--query 'select id,name from students where $CONDITIONS' --fields-terminated-by \
#	"\t" --target-dir "dddef" --enclosed-by "!"
