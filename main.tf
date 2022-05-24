module "networking" {
    source = "./modules/networking"
}

module "ec2" {
    source = "./modules/ec2"
    vpc = module.networking.vpc.id
    subnet = module.networking.vpc.public_subnets[0]
}