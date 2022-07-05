output "vpc" {
  value = module.vpc
}

output "allow_ssh" {
  value = aws_security_group.allow_ssh
}

output "allow_http" {
  value = aws_security_group.allow_http
}
