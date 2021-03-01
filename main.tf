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
  ami           = "ami-009b16df9fcaac611"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09bd8cc43d1c33259"]
  subnet_id              = "subnet-0646b7962ac7e42a7"

  tags = {
    Name = "Lesson7"
  }
  root_block_device {
    delete_on_termination = true
  }
}
