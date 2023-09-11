terraform {

    backend "s3" {
    bucket = "statefile11092023"
    key    = "aws/statefiles/demo.tfstate"
    region = "ap-southeast-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-southeast-1"
}

resource "aws_instance" "web008" {
  ami           = "ami-0464f90f5928bccb8"
  instance_type = "t2.micro"

  tags = {
    Name = "web008"
  }

  tags_all = {
    Name = "web008"
  }

}
