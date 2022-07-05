output "vpc" {
  value = module.vpc
}

output "security_group" {
  value = aws_security_group.allow_ssh.id
}

