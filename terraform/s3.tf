resource "aws_s3_bucket" "main_bucket" {
    bucket = "my-421841691874-bucket"
    force_destroy = true

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket_public_access_block" "example" {
    bucket = aws_s3_bucket.main_bucket.id

    block_public_acls       = false
    block_public_policy     = false
    ignore_public_acls      = false
    restrict_public_buckets = false
}