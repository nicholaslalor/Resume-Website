terraform {
  required_providers {
    aws = {
      version = ">=4.9.0"
      source  = "hashicorp/aws"
    }
  }
}

# Define variables for AWS credentials
variable "aws_access_key" {}
variable "aws_secret_key" {}

# Primary provider configuration for us-east-2
provider "aws" {
  region     = "us-east-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
