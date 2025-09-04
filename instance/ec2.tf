provider "aws" {
    region = "us-east-1"
  
}




resource "aws_instance" "demo" {
    count = 2
    ami           = "ami-0360c520857e3138f" # Example AMI ID
    instance_type = "t3.micro"
    
    tags = {
        Name = "DemoInstance"
    }
  
}