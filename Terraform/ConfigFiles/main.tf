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
    elb         = "http://localhost:4566"
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
# data "aws_subnets" "default" {
#   filter {
#     name   = "vpc-id"
#     values = [data.aws_vpc.default.id]
#   }
# }
# data "aws_vpc" "default" {
#   default = true
# }
# resource "aws_lb" "example" {
#   name               = "terraform-asg-example"
#   load_balancer_type = "application"
#   subnets            = data.aws_subnets.default.ids
# }
# resource "aws_lb_listener" "http" {
#   load_balancer_arn = aws_lb.example.arn
#   port              = 80
#   protocol          = "HTTP"
#   # By default, return a simple 404 page
#   default_action {
#     type = "fixed-response"
#     fixed_response {
#       content_type = "text/plain"
#       message_body = "404: page not found"
#       status_code  = 404
#     }
#   }
# }
resource "aws_instance" "ex11"{
  ami                         = "ami-0fb653ca2d3203ac1"
  instance_type = terraform.workspace == "default" ? "t2.medium":"t2.micro"
}

