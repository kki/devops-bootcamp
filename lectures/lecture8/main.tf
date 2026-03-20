terraform {
  backend "s3" {
    bucket         = "terraform-state-YOUR_ACCOUNT_ID"
    key            = "lecture8/terraform.tfstate"
    region         = "us-west-2"
    profile        = "YOUR_AWS_PROFILE"  # имя профиля из Лекции 4 (aws configure --profile ...)
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.region
  profile = var.aws_profile
}

module "web_server" {
  source = "./modules/ec2"

  instance_type = var.instance_type
  key_name      = var.key_name
  name_tag      = "lecture8-web-server"
}
