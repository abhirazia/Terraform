resource "aws_instance" "ec2_object" {
  
  ami = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  tags = {
 Name = "kareemthoku"

  }
}



