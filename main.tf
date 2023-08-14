provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "192.0.0.0/22"

  tags = {
    Name = "github-actions-test"
  }

}

resource "aws_subnet" "my-vpc-subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  availability_zone = "ap-northeast-1a"
  cidr_block        = "192.0.1.0/26"
  tags = {
    Name = "my-vpc-subnet"
  }
}