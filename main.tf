/*
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  } 

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
*/

resource "aws_instance" "redhat8" {
  ami           = var.redhat_ami
  count         = 2
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
