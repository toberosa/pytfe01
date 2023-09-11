provider "aws" {
  region  = "ap-southeast-1"
}

resource "aws_instance" "web007" {
  ami           = "ami-0464f90f5928bccb8"
  instance_type = "t2.micro"

  tags = {
    Name = "web007"
  }

  tags_all = {
    Name = "web007"
  }

}
