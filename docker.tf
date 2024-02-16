terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
  access_key = "AKIAWAK7S43HQEIRTA4B"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-02eec49345a878486"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-cloud-webserver"
  }
}