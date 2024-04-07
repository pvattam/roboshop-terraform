module "vpc" {
  source = "git::https://github.com/pvattam/tf-module-vpc.git"

  for_each = var.vpc
  vpc_cidr_block = each.value["vpc_cidr_block"]
  public_subnet = each.value["public_subnet"]
  web_subnet = each.value["web_subnet"]
  app_subnet = each.value["app_subnet"]
  db_subnet = each.value["db_subnet"]
  azs = each.value["azs"]

  env = var.env
  tags = var.tags
  account_id = var.account_id
  default_vpc_id = var.default_vpc_id
  default_route_table_id = var.default_route_table_id
  default_vpc_cidr = var.default_vpc_cidr
}

