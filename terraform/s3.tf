resource "aws_s3_bucket" "main_bucket" {
    bucket = "my-421841691874-bucket"

    force_destroy = true

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket_website_configuration" "website_configuration" {
    bucket = aws_s3_bucket.main_bucket.id

    index_document {
        suffix = "index.html"
    }

    error_document {
        key = "index.html"
    }
}

resource "aws_s3_object" "index" {
    bucket = resource.aws_s3_bucket.main_bucket.id
    key    = "index.html"
    source = "../udacity-starter-website/index.html"
    content_type = "text/html"
}