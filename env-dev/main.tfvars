vpc_cidr_block = "10.10.0.0/16"
env = "dev"
tags = {
    company = "xyz co"
    bu_unit = "finance"
    project = "expense"
}

public_subnet = ["10.10.0.0/24","10.10.1.0/24"]
web_subnet = ["10.10.2.0/24","10.10.3.0/24"]
app_subnet = ["10.10.4.0/24","10.10.5.0/24"]
db_subnet = ["10.10.6.0/24","10.10.7.0/24"]
azs_subnet = ["us-east-1a","us-east-1b"]

default_vpc_cidr = "172.31.0.0/16"
default_vpc_id = "vpc-012386a750941fd98"
default_route_table_id = "rtb-01d47609d1bb376b7"
account_id = "751177946459"

rds_allocated_storage =  20
rds_engine = "mysql"
rds_engine_version = "5.7.44"
rds_instance_class = "db.t3.micro"

backend = {
            app_port = 8080
            instance_type = "t3.micro"
            instance_count = 1
        }

frontend = {
            app_port = 80
            instance_type = "t3.micro"
            instance_count = 1
        }
 
bastion_cidrs = ["172.31.40.141/32"]

public_alb = {
    internal = false
    type ="public"
     lb_port = 80
}
  



            