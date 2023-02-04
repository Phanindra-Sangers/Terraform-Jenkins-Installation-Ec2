# enter the required cloud provider you want to provision your infra 

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.primary-region
}



