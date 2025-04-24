terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.95.0"
    }
  }

  backend "s3" {
    bucket = "demoabdbucket1"  # Change this to your real bucket name
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ubuntu_ec2" {
  ami           ="ami-084568db4383264d4"
  instance_type = "t2.micro"

  tags = {
    Name = "remote-ec2"
  }
}
