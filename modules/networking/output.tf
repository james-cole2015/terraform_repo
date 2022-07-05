output "vpc" {
  value = module.vpc
}

output "allow_ssh" {
  value = aws_security_group.allow_ssh
}