provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "inst1" {
  ami = "ami-0aa2b7722dc1b5612"
  instance_type = "t2.micro"
  tags = {
    Name = "inst1"
  }
}

resource "aws_s3_bucket_acl" "buck1"{
    bucket = "terraform-bucket-alexfgdg"
    acl = "public-read"
}

