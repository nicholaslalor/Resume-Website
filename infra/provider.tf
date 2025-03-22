terraform {
  required_providers {
    aws = {
      version = ">=4.9.0"
      source  = "hashicorp/aws"
    }
  }
}

# Primary provider configuration for us-east-1 (where your S3 bucket is located)
provider "aws" {
  region = "us-east-1"  # Set this to the correct region (us-east-1 for your bucket)
}
