terraform {
  backend "s3" {
    bucket       = "terraform-state-oyegokeodev"
    key          = "aws-vpc/terraform.tfstate"
    use_lockfile = true
    encrypt      = true
    region       = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}