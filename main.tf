resource "aws_instance" "redhat9_1" {
  ami           = data.aws_ami.rhel_9_1.id
  count         = 2
  instance_type = var.instance_type
  key_name      = "sasatraining"

  tags = {
    Name = "${var.instance_name}_${count.index + 1}"
  }
}
