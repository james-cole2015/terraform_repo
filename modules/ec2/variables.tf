variable "vpc" {
    type = string
}


variable "subnet_id" {
  type = any
  default = ["$(module.networking.vpc.public_subnets[0]"]
}
