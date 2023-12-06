provider "aws" {
  region     =var.region
}
# Creating the VPC with your name you picked and the environment name/ also tagged for ease
resource "aws_vpc" "vpc_name_environment" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc_name"
  }
}
#  Create acces to the Internet using Internet Gateway
resource "aws_internet_gateway" "vpc_name_environment_internet_gateway" {
  vpc_id = aws_vpc.vpc_name_environment.id
}
# Creating a subnet with your VPC name and environment all tagged
resource "aws_subnet" "vpc_subnet_name_environment" {
  vpc_id     = aws_vpc.vpc_name_environment.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "vpc_name"
  }
}