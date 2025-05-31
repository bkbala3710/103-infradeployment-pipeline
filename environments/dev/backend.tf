terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
    backend "s3" {
      bucket = "103-infradeployment-project"
      key  = "environments/dev/terraform.tfstate"
      region = "us-east-1"                 
      dynamodb_table = "103-infradeployment-lock-table"    # must be hardcoded
    }
  }
provider "aws" {
            region = var.aws_region
}