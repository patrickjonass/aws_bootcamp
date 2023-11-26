variable "instance_count" {
    description = ""
    type = list(string)
    default = []
}

variable "region" {
    description=""
    default=""
}

variable "ami" {
    description = ""
    default = []
}

variable "associate_public_ip_address" {
    description = ""
    default = []
}

variable "availability_zone" {
    description = ""
    default = []
}

variable "ebs_block_device" {
    description = ""
    default = []
}

variable "iam_instance_profile" {
    description = ""
    default = []
}

variable "instance_type" {
    description = ""
    default = []
}

variable "key_name" {
    description = ""
    default = []
}

variable "root_block_device" {
    description = ""
    default = []
}

variable "subnet_id" {
    description = ""
    type=map(string)
    default = {}
}

variable "tags" {
    description = ""
    default = []
}

variable "user_data" {
    description = ""
    default = []
}

variable "vpc_security_group_ids" {
    description = ""
    default = []
} 

variable "volume_tags" {
    description = ""
    default = []
}