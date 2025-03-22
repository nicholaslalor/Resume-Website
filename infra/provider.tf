terraform {
  required_providers {
    aws = {
      version = ">=4.9.0"
      source  = "hashicorp/aws"
    }
  }
}

# Primary provider configuration for us-east-2 (region will be fetched from environment variable)
provider "aws" {
  region = "us-east-2"  # You can still specify the region here or it will be picked up from AWS_DEFAULT_REGION if set in the environment variable
}
