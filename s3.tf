resource "aws_s3_bucket" "testing-s3" {
  bucket = "lotte-bucket-veeam" // don't forget to change this name 
  object_lock_configuration {
    object_lock_enabled = "Enabled"

    rule {
      default_retention {
        mode = "GOVERNANCE"
        days = 365
      }
    }
  }

  versioning {
    enabled = true
  }

  tags = {
    Name = "lotte-bucket-veeam" // and this
  }
}