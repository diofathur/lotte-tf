resource "aws_s3_bucket" "name" {
  bucket = "testing-dio-bucket" 

  tags = {
    Name = "testing-dio-bucket"
  }
}