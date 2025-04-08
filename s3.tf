resource "aws_s3_bucket" "name" {
  bucket = "pti-veeam-backup-bucket" // don't forget to change this name 
  object_lock_configuration {
    object_lock_enabled = "enabled"

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
    Name = "pti-veeam-backup-bucket" // and this
  }
}