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


