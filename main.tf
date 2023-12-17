
data "aws_caller_identity" "current" {}

provider "aws" {
  region  = var.region
}

module "instance_a" {
    source = "git@github.com:patrickjonass/tf_modules.git//ec2?ref=main"

    ## CONFIG
    ami = var.ami
    instance_type = var.instance_type
    tags = var.tags

    ## SECURITY
    #key_name = var.key_name
    #vpc_security_group_ids = var.vpc_security_group_ids

    ## NETWORKING
    #availability_zone = var.availability_zone
    subnet_id = var.subnet_id["instance_a"]

    ## STORAGE
    #root_block_device = var.root_block_device
    #volume_tags = var.volume_tags
}

module "instance_b" {
    source = "git@github.com:patrickjonass/tf_modules.git//ec2?ref=main"

    ## CONFIG
    ami = var.ami
    instance_type = var.instance_type
    tags = var.tags

    ## SECURITY
    #key_name = var.key_name
    #vpc_security_group_ids = var.vpc_security_group_ids

    ## NETWORKING
    #availability_zone = var.availability_zone
    subnet_id = var.subnet_id["instance_b"]

    ## STORAGE
    #root_block_device = var.root_block_device
    #volume_tags = var.volume_tags
}