terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "tfsfile"
    key            = "stage/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tfStateFile"
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}