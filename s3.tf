resource "aws_s3_bucket" "name" {
  bucket = "testing-dio-bucket" // don't forget to change this name 

  tags = {
    Name = "testing-dio-bucket" // and this
  }
}