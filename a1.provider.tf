###terraform setting block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 4.0"
      #in production always put this version number
    }
    ###adding backend as s3 for remote state storage
    random = {
      source = "hashicorp/random"
    }
    null = {
      source = "hashicorp/null"
    }

 cloud {
    organization = "cloud4c-vpc"

    workspaces {
      name = "gh-action-demo"
    }
  }
  }
  ####

}

#provider block
provider "aws" {
  region = var.aws_region
}
