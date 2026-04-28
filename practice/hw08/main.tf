terraform {
  backend "s3" {
    bucket         = "pasv-terraform-states"
    key            = "pasv-hw/kk/hw8/terraform.tfstate"
    region         = "us-west-2"
    profile        = "pasv-hw"
    dynamodb_table = "kk-terraform-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "pasv-hw"
}

resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = file("~/.ssh/hw08-key.pub")
}

module "web_dev" {
  source        = "./modules/ec2"
  key_name      = aws_key_pair.this.key_name
  instance_type = "t2.micro"
  name_tag      = "myapp-dev-kk"
  env_label     = "DEV ENVIRONMENT"
}

module "web_prod" {
  source        = "./modules/ec2"
  key_name      = aws_key_pair.this.key_name
  instance_type = "t2.micro"
  name_tag      = "myapp-prod-kk"
  env_label     = "PROD ENVIRONMENT"
}
