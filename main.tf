resource "aws_instance" "redhat9_1" {
  ami           = data.aws_ami.rhel_9_1.id
  count         = 2
  instance_type = var.instance_type
  key_name      = "training_terraform_aws"

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file("training_terraform_aws")
    timeout     = "4m"

    provisioner "remote-exec" {
      inline = [
        "sudo dnf update -y",
        "sudo dnf install -y ansible-core",
      ]
    }

    tags = {
      Name = "${var.instance_name}_${count.index}"
    }
  }
}

/*
output "public_ip" {
  value = aws_instance.redhat9_1.public_ip
}

#  user_data     = <<-EOL
#  #!/bin/bash
#
#  apt update
#  subscription-manager register --username ec2-uaer --password *!M@n@g3r!* --auto-attach
#  EOL

#  user_data     = <<-EOL
#  #!/bin/bash
#
#  apt update
#  subscription-manager register --username ec2-uaer --password *!M@n@g3r!* --auto-attach
#  EOL
*/