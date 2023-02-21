resource "aws_instance" "redhat9_1" {
  ami           = data.aws_ami.rhel_9_1.id
  count         = 0
  instance_type = var.instance_type
  key_name      = "training_terraform_aws"

  tags = {
    Name = "${var.instance_name}_${count.index + 1}"
  }
}
