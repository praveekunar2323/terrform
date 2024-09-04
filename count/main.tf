provider "aws" {
    region = "ap-south-1"

}

module "ec2" {
    source = "./modules"
    c = var.c
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = var.security_groups
    tags = {
    Environment = "production"
}
name = var.ami


}
