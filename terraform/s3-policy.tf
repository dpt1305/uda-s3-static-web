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
        ]
    }
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
    bucket = aws_s3_bucket.main_bucket.id
    policy = data.aws_iam_policy_document.allow_access.json
}