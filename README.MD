1. Provision S3 bucket:
    > cd ./terraform
    
    > terraform init
    
    > terraform apply 
    
    ![alt text](image-1.png)

2. Upload folder "udacity-starter-website" to bucket:
    > chmod 777 ./upload-folder.sh

    > ./upload-folder.sh

    ![alt text](image-2.png)
3. S3 bucket permission:
    ![alt text](image-3.png)

4. Access through Web static:
    ![alt text](image-4.png)
    ![alt text](image-5.png)

5. Cloudfront distribution:
    ![alt text](image-6.png)
    ![alt text](image-7.png)