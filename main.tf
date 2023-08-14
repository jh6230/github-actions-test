provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "192.0.0.0/22"

  tags = {
    Name = "github-actions-test"
  }

}

