resource "tls_private_key" "this" {
  algorithm = "RSA"
}

module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "deployer-one"
  public_key = tls_private_key.this.public_key_openssh
}

provisioner "local-exec" {
 command = "echo '{tls_private_key.this.private_key_pem}' > ./myKey.pem"
}