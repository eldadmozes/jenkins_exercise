provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "inst1" {
  ami = "ami-0aa2b7722dc1b5612"
  type = "t2.micro"
  tags = {
    Name = "inst1"
  }
}