#!/bin/bash
cd /opt/files
while :
do
        if [ 'ls | wc -l' != "0" ]
        then
        file=$(ls)
        for i in $file
        do
        aws s3 cp $i s3://devopstech-app
        done
        rm -rf $file
        sleep 10s
        else
        sleep 10s
        fi
done