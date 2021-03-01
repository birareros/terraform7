terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

resource "aws_instance" "terra_7" {
  ami           = "ami-*********"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-same with EC2"]
  subnet_id              = "subnet-**************"

  tags = {
    Name = "Lesson7"
  }
  root_block_device {
    delete_on_termination = true
  }
}
