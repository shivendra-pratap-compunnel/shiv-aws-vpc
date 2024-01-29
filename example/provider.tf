terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.33.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.0"
    }
  }
  required_version = ">= 1.6.4"
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Terraform = true # set in nested too, make immutable
      company   = "compunnel"
    }
  }
}
