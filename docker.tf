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
}

resource "aws_instance" "main" {
  ami                                  = "ami-02eec49345a878486"
  availability_zone                    = "ap-southeast-2b"
  instance_type                        = "t2.micro"
  tags = {
    Name = "terraform-cloud-webserver"
  }
}