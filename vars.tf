variable "cidr" {
  default = "10.0.0.0/16" // change this if you want to change the cidr
}

locals {
  name = "pti" //change this for name 
}

# Variable for CIDR Subnet public, private, staging
variable "subnet" {
  type    = list(any)
  default = ["10.0.0.0/24", "10.0.1.0/24"] //change this following the cidr vpc
}

# Variable for Availability Zone
variable "az" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b"] //change this following the home region
}

variable "region" {
  default = "us-east-1" //change this if you want to run to another region
}


variable "t3" {
  default = "t3.small" //change this or disable this if you don't want to use it 
}

variable "ubuntu" {
  default = "ami-0c1f9d5bae1d8ae80" //change this if you using another operating system 
}

