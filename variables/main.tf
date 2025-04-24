
provider "aws"  {
  region = "eu-north-1"  
}


resource "aws_instance" "ubuntu_ec2" {
  ami           = "ami-0c1ac8a41498c1a9c"
  instance_type = "t3.micro"
  tags = {
    Name = var.instance_tag_name
  }
}
