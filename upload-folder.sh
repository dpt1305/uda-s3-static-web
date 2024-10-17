#!/bin/sh

cd udacity-starter-website 

# Bucket name
BUCKET_NAME=my-421841691874-bucket 

# Put a single file. 
aws s3api put-object --profile udacity --bucket $BUCKET_NAME --key index.html --body index.html 

# Copy over folders from local to S3 
aws s3 cp --profile udacity vendor/ s3://$BUCKET_NAME/vendor/ --recursive 
aws s3 cp --profile udacity css/ s3://$BUCKET_NAME/css/ --recursive 
aws s3 cp --profile udacity img/ s3://$BUCKET_NAME/img/ --recursive 