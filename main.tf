module "vpc" {
    source = "./module/vpc"
    vpc_cidr_block  = var.vpc_cidr_block 
    env = var.env
    tags = var.tags
    public_subnet = var.public_subnet
    web_subnet = var.web_subnet
    app_subnet = var.app_subnet
    db_subnet = var.db_subnet
    azs_subnet = var.azs_subnet
    }
