terraform {
  required_version = ">= v1.1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.2"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0a4e637babb7b0a86"
  instance_type = "t2.micro"

  tags = {
    Name        = "terraform-example",
    Environment = "test"
  }
}
