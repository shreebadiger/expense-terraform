vpc_cidr_block = "10.20.0.0/16"
env = "dev"
tags = {
    company = "xyz co"
    bu_unit = "finance"
    project = "expense"
}

public_subnet = ["10.20.0.0/24","10.20.1.0/24"]
web_subnet = ["10.20.2.0/24","10.20.3.0/24"]
app_subnet = ["10.20.4.0/24","10.20.5.0/24"]
db_subnet = ["10.20.6.0/24","10.20.7.0/24"]
azs_subnet = ["us-east-1a","us-east-1b"]

default_vpc_cidr = "172.31.0.0/16"
default_vpc_id = "vpc-012386a750941fd98"
default_route_table_id = "rtb-01d47609d1bb376b7"
account_id = "751177946459"

rds_allocated_storage =  20
rds_engine = "mysql"
rds_engine_version = "5.7.44"
rds_instance_class = "db.t3.small"

backend = {
            app_port = 8080
            instance_type = "t3.micro"
            instance_count = 2
        }

frontend = {
            app_port = 80
            instance_type = "t3.micro"
            instance_count = 2
        }
 
bastion_cidrs = ["172.31.40.141/32"]

public_alb = {
    internal = false
    type ="public"
    lb_port = 80
    component = "frontend"
    enable_https = true
    ingress = {
    http = { port = 80 }
    https = { port = 443 }
    }
}

backend_alb = {
    internal = true
    type ="backend"
    lb_port = 80
    component = "backend"
    enable_https = false
    ingress = {
    http = { port = 80 }
    }

}

route53_zone_id = "Z043769343BOX5323WQF"
kms = "arn:aws:kms:us-east-1:751177946459:key/a67450bb-b04f-45c0-8406-5588122b350e"
certificate_arn = "arn:aws:acm:us-east-1:751177946459:certificate/f004e848-d847-45e8-b070-c290fb1b072c"
