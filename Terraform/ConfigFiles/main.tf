provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test123"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_use_path_style           = true
  endpoints {
    s3          = "http://localhost:4566"
    ec2         = "http://localhost:4566"
    autoscaling = "http://localhost:4566"
  }

}
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}
resource "aws_s3_bucket" "b" {
  bucket = "theerej1"
}
resource "aws_instance" "example" {
  ami                         = "ami-0fb653ca2d3203ac1"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.instance.id]
  user_data                   = <<-EOF
            #!/bin/bash
            echo "Hello, World" > index.xhtml
            nohup busybox httpd -f -p ${var.server_port} &
            EOF
  user_data_replace_on_change = true
  tags = {
    Name = "terraform-example"
  }
}
resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP address of the web server"
}

data "aws_ami" "example" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ami_id" {
  description = "The ID of the most recent Amazon Linux 2 AMI"
  value       = data.aws_ami.example.id
}

resource "aws_launch_configuration" "ex" {
  image_id        = "ami-04681a1dbd79675a5"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.instance.id]
  user_data       = <<-EOF
            #!/bin/bash
            echo "Hello, World" > index.xhtml
            nohup busybox httpd -f -p 8080 &
            EOF
  lifecycle {
    create_before_destroy = true
  }
}
resource "aws_autoscaling_group" "name1" {
  launch_configuration = aws_launch_configuration.ex.name
  min_size             = 2
  max_size             = 10

  tag {
    key                 = "Name"
    value               = "terraform-example"
    propagate_at_launch = true
  }
}

