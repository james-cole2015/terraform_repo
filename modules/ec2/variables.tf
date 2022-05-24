variable "vpc" {
    type = string
}

variable "public_sn0" {
  type = any
  default = "module.networking.vpc.public_subnets[0]"
}