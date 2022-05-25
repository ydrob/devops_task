#!/bin/sh
cd /opt/files
while :
do
	if [ 'ls | wc -l' != "0" ]
		then
			file=$(ls)
			#aws s3 cp $file s3://existing_bucket_name/ --region "ap-south-1"
            rm -rf $file
            sleep 1m
		else 
			sleep 1m
	fi
done