resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
/*
resource "aws_key_pair" "tf_key" {
  key_name = "tf_key" 
  public_key = tls_private_key.rsa.public_key_openssh

  
}
*/
module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "tf_key"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "local_file" "created_keypair_to_local" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "tfkey.pem"
}


