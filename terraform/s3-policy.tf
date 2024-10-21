resource "aws_s3_bucket_public_access_block" "publicity" {
    bucket = aws_s3_bucket.main_bucket.id

    block_public_acls       = false
    block_public_policy     = false
    ignore_public_acls      = false
    restrict_public_buckets = false
}

data "aws_iam_policy_document" "allow_access" {
    version = "2012-10-17"
    statement {
        sid = "AddPerm"
        effect = "Allow"
        principals {
            type = "*"
            identifiers = ["*"]
        }

        actions = [
            "s3:GetObject",
        ]

        resources = [
            "${aws_s3_bucket.main_bucket.arn}/*",
            "${aws_s3_bucket.main_bucket.arn}"
        ]
    }
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
    bucket = aws_s3_bucket.main_bucket.id
    policy = data.aws_iam_policy_document.allow_access.json
    depends_on = [aws_s3_bucket_public_access_block.publicity]

}