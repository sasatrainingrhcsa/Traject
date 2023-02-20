variable "region" {
  description = "AWS region"
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.medium"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "RedHat9.1"
}

variable "redhat_ami" {
  description = "Redhat AMI"
  default     = "ami-03f255060aa887525"
}

variable "instance_count" {
  type    = string
  default = null
}
