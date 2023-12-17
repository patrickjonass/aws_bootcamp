terraform {
  backend "s3" {
    bucket = "aws-tibs-tfstatefiles"
    key    = "aws-bootcamp/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
