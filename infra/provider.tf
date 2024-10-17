terraform {
  required_providers {
    aws = {
      version = ">=4.9.0"
      source  = "hashicorp/aws"
    }
  }
}

# Primary provider configuration for us-east-2
provider "aws" {
  region = "us-east-2"
}
