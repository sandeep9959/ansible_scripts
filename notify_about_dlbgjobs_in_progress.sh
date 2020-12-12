#!/bin/bash
#OldDate=$(date -d "now() - 30 minutes" +"%Y-%m-%d %H:%M:%S")
#Date1=$(date +"%Y-%m-%d %H:%M:%S")
#echo $Date1
#echo $OldDate
mysqlEnvironmentConfig="-u <USERNAME> -p<PASSWORD> -h <HOST> <DATABASE>"
dl_jobs_query="QUERY"
mysql $mysqlEnvironmentConfig -e "$dl_jobs_query"
