terraform {
    required_providers {
        aws ={
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
    backend "s3" {
        bucket = "nanda3s"
        key    = "eks-sg"
        region = "us-east-1"
        dynamodb_table = "nandadb"
    }
}

provider "aws" {
    region = "us-east-1"
  
}