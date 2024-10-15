terraform {
  required_providers {
    aws = {
      version = ">=4.9.0"
      source  = "hashicorp/aws"
    }
  }
}

# Primary provider configuration for us-east-2 (where your Lambda function is located)
provider "aws" {
  access_key = "AKIAVRUVVHXKJ337GYC4"  # Replace with your actual access key
  secret_key = "68nVHnuW7M03TwOhWHW5jmg1WmHBnrjRWvDCtbgq"  # Replace with your actual secret key
  region     = "us-east-2"  # Ensure this is correct for your Lambda function
}