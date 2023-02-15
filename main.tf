/*
provider "aws" {
  region = var.region
}

amazon/RHEL-9.0.0_HVM-20230127-x86_64-24-Hourly2-GP2
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
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
} 
