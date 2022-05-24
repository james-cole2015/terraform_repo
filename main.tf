module "networking" {
    source = "./modules/networking"
}

module "ec2" {
    source = "./modules/ec2"
    vpc = module.networking.vpc
}