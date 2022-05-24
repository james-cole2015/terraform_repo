variable "vpc" {
    type = string
}


variable "public_sn0" {
  type = string
  default = module.networking.vpc.public_subnets[0]
}