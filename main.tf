module "networking" {
    source = "./modules/networking"
}

module "ec2" {
    source = "./modules/ec2"
    vpc = module.networking.vpc_id
    subnet_id = module.networking.vpc.public_subnets[0]
    key_name = module.key_gen.key_pair.key_name
}

module "key_gen" {
    source = "./modules/aws_keys"
}

provisioner "local-exec" {
  command = "echo '{tls_private_key.this.private_key_pem}' > ./myKey.pem"
}
