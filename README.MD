# Installation

1. Provision S3 bucket:
    ```
    cd ./terraform
    terraform init
    terraform apply --auto-approve
    ```
    

2. Upload folder "udacity-starter-website" to bucket:
    ```
    chmod 777 ./upload-folder.sh
    ./upload-folder.sh
    ```


# Usage
## 1. S3 bucket permission
    ![alt text](image-1.png)
    ![alt text](image-3.png)
    ![alt text](image-8.png)

## 2. Objects on bucket:
    ![alt text](image-2.png)

## 3. Static Website Hosting:
- Link: "http://my-421841691874-bucket.s3-website-us-east-1.amazonaws.com"
    ![alt text](image-4.png)
    ![alt text](image-5.png)

## 4. CloudFront distribution 
- State: "Enable"
    ![alt text](image-9.png)
    ![alt text](image-10.png)
- Link: "https://d1e7x0xu0x0nh5.cloudfront.net"
    ![alt text](image-11.png)

# Roadmap
- [x] S3 bucket:
    - [x] S3 policy
    - [x] Upload files/folder
    - [x] Static website hosting
- [x] CloudFront:
    - [x] CloudFront distribution