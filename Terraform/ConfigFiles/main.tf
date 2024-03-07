provider "aws" {
    region = "us-east-1"
    access_key = "test123"
    secret_key = "test"
    skip_credentials_validation = true
    skip_requesting_account_id = true
    skip_metadata_api_check = true
    s3_use_path_style = true
    endpoints {
      s3 = "http://localhost:4566"
      ec2 = "http://localhost:4566"
    }
    
}
resource "aws_s3_bucket" "b" {
    bucket = "theerej1"
}
resource "aws_instance" "example" {
ami = "ami-0fb653ca2d3203ac1"
instance_type = "t2.micro"
}