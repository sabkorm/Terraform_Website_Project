resource "aws_s3_bucket" "website"{
  bucket = "sab-website-bucket"

  tags = {
    Name = "Website bucket"
  }
}

resource "aws_s3_object" "folder" {
  bucket = aws_s3_bucket.website.id
  key    = "website/"
}

resource "aws_s3_bucket_ownership_controls" "websiten" {
  bucket = aws_s3_bucket.website.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}