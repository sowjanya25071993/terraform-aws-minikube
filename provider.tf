terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
  backend "s3" {
    bucket = "sowjanyaaws-remote-state"
    key    = "minikube"
    region = "us-east-1"
    dynamodb_table = "sowjanyaaws-locking-prod"
    
  }


}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}