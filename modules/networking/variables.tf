variable cidr_block {
    type = string
    default = "10.100.0.0/16"
}

variable "private_sn" {
    type = list(string)
    default = [ "10.100.0.0","10.100.1.0" ]
}

variable "public_sn" {
  type = list(string)
  default = [ "10.100.32.0","10.100.42.0" ]
}

variable "vpc_name" {
  type = string
  default = "JasperMainNet"
}

variable "test" {
  default = "test"
  type = string
}