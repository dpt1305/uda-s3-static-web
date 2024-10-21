locals {
    domain = "${aws_s3_bucket_website_configuration.website_configuration.website_endpoint}"
}
resource "aws_cloudfront_distribution" "s3_distribution" {
    origin {
        domain_name = local.domain
        origin_id = aws_s3_bucket_website_configuration.website_configuration.website_endpoint
        custom_origin_config {
            http_port = 80
            https_port = 443
            origin_protocol_policy = "http-only"
            origin_ssl_protocols = ["SSLv3", "TLSv1", "TLSv1.1", "TLSv1.2"]    
        }
    }
    default_cache_behavior {
        allowed_methods         = ["GET", "HEAD"]
        cached_methods          = ["GET", "HEAD"]
        target_origin_id        = aws_s3_bucket_website_configuration.website_configuration.website_endpoint
        cache_policy_id         = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
        viewer_protocol_policy  = "allow-all"
        compress                = true
    }

    viewer_certificate {
        cloudfront_default_certificate = true
    }
    restrictions {
        geo_restriction {
            restriction_type = "none"
            locations        = []
        }
    }
    enabled = true
}