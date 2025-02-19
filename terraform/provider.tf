terraform {

  backend "s3" {
    bucket = "beans-tf-state"
    dynamodb_table = "beans-state-lock-table"
    encrypt = true
    region = "af-south-1"
    key = "beans_serv/main.tfstate"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.86.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }

  }
}

provider "aws" {
  region = "af-south-1"
  
}