terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Remote state backend (uncomment and set values before use)
  backend "s3" {
    bucket         = "seth-terraform-state"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
  }
}