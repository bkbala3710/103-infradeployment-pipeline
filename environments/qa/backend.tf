terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
    backend "s3" {
      bucket = "103-infradeployment-project"
      key  = "environments/qa/terraform.tfstate"
      region = "us-east-1"                 
      dynamodb_table = "103-infradeployment-lock-table-2"    # must be hardcoded
    }
  }
provider "aws" {
            region = var.aws_region
}