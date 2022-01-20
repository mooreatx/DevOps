
# Docker EC2 template - Ansible | Terraform
This is an Ansible project to show how to deploy a static website to Docker hosted by an AWS EC2 instance.

* Uses Apache for web front end
  - Initial Index.html file is automatically created for each Docker container deployed.

# Notes
* Replace the {ec2-private-ip}.{region}  prefix in the host.ini with the actual EC2 private IP hostname and region. 

# Future features
* Utilize AWS boto3 Ansible module  
* Provide Terraform Template

## About the Author
This project was created by [Shawn Moore] (https://shawnmoorecisco.blogspot.com/).
