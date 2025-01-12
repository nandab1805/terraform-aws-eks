terraform {
    required_providers {
        aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
        }
    }
  


backend "s3" {
    bucket = "nanda3s"
    key    = "eks-vpc"
    region = "us-east-1"
    dynamodb_table = "nandadb"
  }

}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
