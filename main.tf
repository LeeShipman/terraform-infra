terraform {
  required_version = ">= v1.11.1"
  backend "s3" {
    bucket = "myapp-terraformbucket"
    key    = "myapp/state.tfstate"
    region = "eu-west-2"
  }
}


module "ec2" {
  source        = "git@github.com:LeeShipman/terraform-ec2-module.git"
  instance_name = var.instance_name
}