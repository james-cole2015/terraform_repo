module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "JacksFlamingRevenge"

  ami                    = "ami-0439517b5e436bdab"
  instance_type          = "t2.small"
  key_name               = "tf_key"
  monitoring             = true
  #vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = var.subnet_id
  user_data = file("ws_bootstrap.sh")

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
