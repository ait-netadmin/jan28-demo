terraform {
  required_version="~> 0.12"

  backend "s3" {}
}

# Configuring Provider AWS
provider "aws" {
  version="~> 2.7"
  region = "${var.cust_region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile = "${var.profile}"
}

module "work-vpc" {
  source="./infra/module/vpc"
  #variable tags {}
  #tags="${merge("${module.output.vpc_tags}","${var.tags}")}"
  #tags="${var.tags}"
  #cidr_block="${var.cidr_block}"
}

module "work-igw" {
  source="./infra/module/igw"
  vpc_id = "${module.work-vpc.vpc_id}"
}

module "work-pub-subnet" {
  source="./infra/module/subnet/pub"
  vpc_id = "${module.work-vpc.vpc_id}"
}

module "work-priv-subnet" {
  source="./infra/module/subnet/priv"
  vpc_id = "${module.work-vpc.vpc_id}"
}

module "work-pub-rtb" {
  source="./infra/module/route-tb/pub"
  vpc_id = "${module.work-vpc.vpc_id}"
  igw_id = "${module.work-igw.igw_id}"
}

module "work-pub-rtb-assc" {
  source="./infra/module/route-tb-assc"
  # For associating public subnet with public route table
  pub-subnet-1_id = "${module.work-pub-subnet.pub-subnet-1_id}"
  pub_route_table_id = "${module.work-pub-rtb.pub-rtb-1_id}"
}
