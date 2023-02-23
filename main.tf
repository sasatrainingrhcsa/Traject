resource "aws_instance" "redhat9_1" {
  ami           = data.aws_ami.rhel_9_1.id
  count         = 1
  instance_type = var.instance_type
  key_name      = "training_terraform_aws"
  user_data     = <<-EOL
  #!/bin/bash

  apt update
  subscription-manager register --username sasaguzi --password 12M@n@g3r12 --auto-attach
  EOL

  tags = {
    Name = "${var.instance_name}_${count.index + 1}"
  }
}
