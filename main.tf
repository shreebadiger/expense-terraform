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
    default_vpc_cidr = var.default_vpc_cidr
    default_vpc_id = var.default_vpc_id
    default_route_table_id = var.default_route_table_id
    account_id = var.account_id
}

module "rds"{
    source = "./module/rds"
    rds_allocated_storage =  var.rds_allocated_storage
    rds_engine = var.rds_engine
    rds_engine_version = var.rds_engine_version
    rds_instance_class = var.rds_instance_class
    env = var.env
    tags = var.tags
    subnets = module.vpc.db_subnet
    vpc_id = module.vpc.vpc_id
    sg_cidrs = var.app_subnet
}

module "backend" {
    source = "./module/app"
    env = var.env
    tags = var.tags
    component = "backend"
    instance_type = var.backend["instance_type"]
    instance_count = var.backend["instance_count"]
    subnets = module.vpc.app_subnet
    vpc_id = module.vpc.vpc_id
    app_port = var.backend["app_port"]
    sg_cidrs = var.web_subnet
    bastion_cidrs = var.bastion_cidrs
    }



  



