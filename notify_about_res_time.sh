#!/bin/bash
OldDate=$(date -d "now() - 30 minutes" +"%Y-%m-%d %H:%M:%S")
Date1=$(date +"%Y-%m-%d %H:%M:%S")
#echo $Date1
#echo $OldDate
mysqlEnvironmentConfig="-u <USERNAME> -p<PASSWORD> -h <HOST> <DATABASE>"
sample_query="SELECT max(timestampdiff(second,start_ts,end_ts)) as res_time FROM <TABLE> where created_ts between '$OldDate' and '$Date1';"
mysql $mysqlEnvironmentConfig -e "$sample_query"
#echo $res_times
#mysql_variable=$(mysql $mysqlEnvironmentConfig -e "$sample_query")
#echo $mysql_variable


