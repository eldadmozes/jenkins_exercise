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

resource "aws_s3_bucket" "buck1"{
    bucket = "terraform-bucket-alexfgdg"
}

resource "aws_s3_bucket_public_access_block" "buck1" {
  bucket = aws_s3_bucket.buck1.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
