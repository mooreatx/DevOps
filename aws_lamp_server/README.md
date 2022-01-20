# Apache EC2 template - Ansible | Terraform
This is an Ansible project to show how to deploy an Apache LAMP stack hosted by AWS EC2 instances.

* Front-end web servers utilize Apache
    - SSL cert is automatically generated on each EC2 web server instance.
    
* Database is served by MariaDB


# Notes
* Replace the {ec2-private-ip}.{region}  prefix in the host.ini with the actual EC2 private IP hostname and region.
* Requires Ansible firewall module to work properly (https://docs.ansible.com/ansible/latest/collections/ansible/posix/firewalld_module.html)

# Future features
* Provide Terraform Template

## About the Author
This project was created by [Shawn Moore] (https://shawnmoorecisco.blogspot.com/).
