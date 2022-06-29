variable "vpc" {
    type = string
}


variable "subnet_id" {
  type = any
  default = ["$(module.networking.vpc.public_subnets[0]"]
}

variable "key_name" {
  type = any
  default = ["$module.aws_keys.key_pair.key_name"]
}
