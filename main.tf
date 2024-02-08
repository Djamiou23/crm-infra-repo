#define the cloud provider "aws"
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.16"
    }
  }
  required_version = ">=1.2.0"
}
#specifying the region for the chose provider
provider "aws" {
  region = "us-east-2"
}
#creating an instance
resource "aws_instance" "crm_app_server" {
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = "t2.micro"
  tags = {
    Name = "first-ec2"
  }

}
