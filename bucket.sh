#!/bin/bash
echo "enter your access key "
read accesskey
echo "enter your secret access key "
read secret
echo "enter the bucket that you need backup in "
read bucket
echo "enter the backup folder full path "
read sourcepath
export AWS_ACCESS_KEY_ID=$accesskey
export AWS_SECRET_ACCESS_KEY=$secret
export AWS_DEFAULT_REGION=us-east-1
aws s3 cp $sourcepath s3://$bucket/history123/ --recursive
topic_arn="arn:aws:sns:us-west-1:201382635480:SNS-Topic"

if [ $? -eq 0 ]
then
 echo "backup successful"

else
 echo "backup failed , check your inputs "
fi
