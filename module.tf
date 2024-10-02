provider "aws" {
    region = "ap-south-1"
  
} 

locals {
   instance_type  = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "m5.large"
  }
}

resource "aws_instance" "myec2" {
  ami           = "ami-08a0d1e16fc3f61ea"
   instance_type  = local.instance_type[terraform.workspace]
}