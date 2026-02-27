## Name: Shravani Vasa
## G Number: G01543148
## Course: SWE645
## Assignment: Assignment 1

##  Deployment URLs
s3 bucket:
(http://shravanivasa.assignment1.s3-website-us-east-1.amazonaws.com/)
Ec2:
(http://34.203.199.53/)


---

Steps followed to deploy the website using Amazon S3:
1. I logged in to the AWS Management Console and opened the Amazon S3 service.
2. I created a new S3 bucket with a unique name.
3. While creating the bucket, I unchecked “Block all public access” and acknowledged the warning.
4. After the bucket was created, I went to the Permissions tab and added a bucket policy to allow public read access (s3:GetObject).
5. I then went to the Properties tab and enabled Static Website Hosting.
6. I set the index document as index.html.
7. I uploaded the following files to the S3 bucket:
   - index.html
   - survey.html
   - image file used on the homepage
8. I accessed the website using the S3 static website endpoint URL and verified that both the homepage and survey page load correctly.


Steps followed to deploy the website using Amazon EC2:
1. I logged in to the AWS Management Console and opened the EC2 service.
2. I clicked Launch Instance and selected Amazon Linux 2023 as the AMI.
3. I chose t2.micro as the instance type and selected my key pair mykey1.pem.
4. I configured the security group to allow SSH (port 22) and HTTP (port 80) access.
5. After launching the instance, I connected to it using SSH from my local terminal.
6. I updated the system packages and installed the Apache web server (httpd).
7. I started the Apache service and enabled it to run automatically on system boot.
8. I uploaded my website files (index.html, survey.html, and images) to the directory:
   /var/www/html
9. I accessed the website using the EC2 instance’s public IP address in a web browser.
10. I verified that the homepage and survey page loaded correctly.


## Pages

1. **Landing Page (`index.html`)**  
   - Personal portfolio showcasing my bio, skills, and interests.
   - Navigation link to  Survey page.



2. **Survey Page (`survey.html`)**  
   - Provides checkboxes to indicate what users liked most about the campus.
   - Student feedback survey form.





