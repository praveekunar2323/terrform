provider "aws" {
    alias = "ap"
    region = "ap-south-1"
}

provider "aws" {
    alias = "us"
    region = "us-east-1"

}

module "ec2" {
    source = "./modules"
    providers = {
      aws = aws.us
    }
    c = var.c
    ami = var.ami
    instance_type = var.instance_type
    tags = {
    Environment = "production"
    }
    name = var.name
}
