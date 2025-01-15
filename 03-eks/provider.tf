terraform {
    required_providers {
        aws ={
            source = "hashicorp/aws"
            version = "~> 5.81.0"
        }
    }
    backend "s3" {
        bucket = "nanda3s"
        key    = "eks"
        region = "us-east-1"
        dynamodb_table = "nandadb"
    }
}

provider "aws" {
    region = "us-east-1"
  
}