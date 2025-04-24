
output "instance_id" {
description = "ID of the EC2 instance"
value = aws_instance.ubuntu_ec2.id
}
output "instance_public_ip" {
  description = "Public ip address of he EC2 instance"
  value = aws_instance.ubuntu_ec2.public_ip
}
