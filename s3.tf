resource "aws_s3_bucket" "name" {
  bucket = "pti-veeam-backup-bucket" // don't forget to change this name 

  tags = {
    Name = "pti-veeam-backup-bucket" // and this
  }
}