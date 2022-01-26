resource "aws_launch_configuration" "example" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-01963b92a9a1e6020",]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  
  tags = {
    Name = "terraform-example"
  }

  lifecycle {
    create_before_detroy = true
  }
}

data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.ansible.id
}

resource "aws_autoscaling_group" "example" {
  launch_configuration = aws_launch_configuration.example.name
  vpc_zone_identifier = data.aws_subnet_ids.ansible.ids

  min_size = 2
  max_size = 10

  tag {
    key = "Name"
    value = "terraform-asg-example"
    propagate_at_launch = true
  }
}
