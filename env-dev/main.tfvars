env = "dev"
tags = {
  company = "XYZ Co"
  bu_unit = "Ecommerce"
  project_name = "roboshop"
}
account_id = "072976934238"
default_vpc_id = "vpc-0e510849fd95dcedf"
default_route_table_id = "rtb-07434411c4ca3252b"
default_vpc_cidr = "172.31.0.0/16"

route53_zone_id = "Z017218723D63YD2W9JSZ"
kms = "arn:aws:kms:us-east-1:072976934238:key/079f5721-2a3d-4e97-b0da-900b8fde1369"
certificate_arn = "arn:aws:acm:us-east-1:072976934238:certificate/ab3e1f5e-0b58-45f5-b14e-37aec2c793c2"


vpc = {
  main = {
    vpc_cidr_block = "10.11.0.0/16"

    public_subnet = ["10.11.0.0/24","10.11.1.0/24"]
    web_subnet = ["10.11.2.0/24","10.11.3.0/24"]
    app_subnet = ["10.11.4.0/24","10.11.5.0/24"]
    db_subnet = ["10.11.6.0/24","10.11.7.0/24"]
    azs = ["us-east-1a", "us-east-1b"]
  }
}

rds = {
  main = {
    allocated_storage = 20
    engine = "mysql"
    engine_version = "5.7.44"
    instance_class = "db.t3.micro"
    parameter_group_family = "mysql5.7"
  }
}

docdb = {
  main = {
#    allocated_storage = 20
    engine = "docdb"
#    engine_version = "5.7.44"
#    instance_class = "db.t3.micro"
    parameter_group_family = "docdb4.0"
  }
}

