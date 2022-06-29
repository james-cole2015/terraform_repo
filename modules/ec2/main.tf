module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "single-instance"

  ami                    = "ami-0b0ea68c435eb488d"
  instance_type          = "t2.micro"
  key_name               = var.key_name
  monitoring             = true
  #vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = var.subnet_id

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}