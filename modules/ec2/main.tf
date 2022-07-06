module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "JacksFlamingRevenge"

  ami                    = "ami-0439517b5e436bdab"
  instance_type          = "t2.small"
  key_name               = "tf_key"
  monitoring             = true
  vpc_security_group_ids = var.security_group
  subnet_id              = var.subnet_id
  #user_data              = file("ws_bootstrap.sh")
  user_data = <<EOF
  git clone https://github.com/james-cole2015/wrecked-machine.git 
  EOF 

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
