provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "remote-state-terraform-resources"
    region         = "ap-south-1"
    key            = "eks/terraform.tfstate"
  #  dynamodb_table = "Lock-Files"
    encrypt        = true
  }
} 