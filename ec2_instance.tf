# terraform configur settings block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
  }
}

# Provider blocks
provider "aws" {
  profile = "default"
  region = "us-east-1"
  
}

#Resource block
resource "aws_instance" "testserver9" {
  ami = "ami-09b1659710790d66f"
  instance_type = "t2.micro"

}
