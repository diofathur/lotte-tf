variable "cidr" {
  default = "10.121.0.0/16"
}

locals {
  name = "pti"
}

# Variable for CIDR Subnet public, private, staging
variable "subnet" {
  type    = list(any)
  default = ["10.121.1.0/26", "10.121.2.0/26"]
}

# Variable for Availability Zone
variable "az" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b"]
}

variable "region" {
  default = "us-east-1"
}


variable "t3" {
  default = "t3.medium"
}

variable "ubuntu" {
  default = "ami-0e86e20dae9224db8"
}

variable "key" {
  default = "${local.name}-key"
}