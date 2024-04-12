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

bastion_cidrs = ["172.31.45.197/32"]
prometheus_cidrs = ["172.31.36.179/32"]

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
    engine = "docdb"
    engine_version = "4.0.0"
    instance_class = "db.t3.medium"
    parameter_group_family = "docdb4.0"
    instance_count = 1
  }
}

elasticache = {
  main = {
    engine = "redis"
    engine_version = "6.2"
    node_type = "cache.t3.micro"
    parameter_group_family = "redis6.x"
    num_cache_nodes = 1
  }
}

rabbitmq = {
  main = {
    instance_type = "t3.small"
  }
}

app = {
  catalogue = {
    instance_type = "t3.small"
    instance_count = 1
    app_port = 8080
    app_subnet_name = "app_subnet"
    lb_subnet_name  = "app_subnet"
  }
  frontend = {
    instance_type = "t3.small"
    instance_count = 1
    app_port = 80
    app_subnet_name = "web_subnet"
    lb_subnet_name  = "public_subnet"
  }
#  cart = {
#    instance_type = "t3.small"
#    instance_count = 1
#    app_port = 8080
#    app_subnet_name = "app_subnet"
#    lb_subnet_name  = "app_subnet"
#  }
#  user = {
#    instance_type = "t3.small"
#    instance_count = 1
#    app_port = 8080
#    app_subnet_name = "app_subnet"
#    lb_subnet_name  = "app_subnet"
#  }
#  shipping = {
#    instance_type = "t3.small"
#    instance_count = 1
#    app_port = 8080
#    app_subnet_name = "app_subnet"
#    lb_subnet_name  = "app_subnet"
#  }
#  payment = {
#    instance_type = "t3.small"
#    instance_count = 1
#    app_port = 8080
#    app_subnet_name = "app_subnet"
#    lb_subnet_name  = "app_subnet"
#  }
#  dispatch = {
#    instance_type = "t3.small"
#    instance_count = 1
#    app_port = 8080
#    app_subnet_name = "app_subnet"
#    lb_subnet_name  = "app_subnet"
#  }
}

