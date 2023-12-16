vpc_cidr_block = "10.10.0.0/16"
env = "dev"
tags = {
    company = "xyz co"
    bu_unit = "finance"
    project = "expense"
}

public_subnet = ["10.10.0.0./24","10.10.1.0./24"]
web_subnet = ["10.10.2.0./24","10.10.3.0./24"]
app_subnet = ["10.10.4.0./24","10.10.5.0./24"]
db_subnet = ["10.10.6.0./24","10.10.7.0./24"]
azs_subnet = ["us-east-1a","us-east-1b"]
