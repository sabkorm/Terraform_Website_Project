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