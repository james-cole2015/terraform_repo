/*
#############
VPC VARIABLES
#############
*/
variable cidr_range {
    default = "10.100.0.0/16"
    type = string
}

variable "private_sn" {
    type = list(string)
    default = ["10.100.0.0/24","10.100.1.0/24","10.100.2.0/24"]
}

variable "public_sn" {
    type = list(string)
    default = ["10.100.254.0/24","10.100.192.0/24","10.100.224.0/24"]
}

variable "nat_gateway" {
    type = bool
    default = true
}

variable "tags" {
    type = map(string)
    default = {
        Environment = "dev"
    }
}

variable "vpc_name" {
    default = "Lukes_VPC"
    type = string
}

variable "azs" {
    default = ["us-east-1b","us-west-1d","us-west-2c"]
    type = list(string)
}

/*
#############
EC2 VARIABLES
#############
*/

variable "ec2_name" {
    type = string
    default = "X-Wing_Targeting_Program"
}

variable "ubuntu_ami" {
    type = string
    default = "ami-01c9c1d6ccb3a4a11"
}

variable "vpc_id" {
  type = string
}