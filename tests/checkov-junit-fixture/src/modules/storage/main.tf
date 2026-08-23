resource "aws_s3_bucket" "module_bucket" {
  bucket = "example-fixture-module-bucket"
}

resource "aws_s3_bucket_versioning" "module_bucket" {
  bucket = aws_s3_bucket.module_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
