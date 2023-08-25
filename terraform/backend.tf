terraform {
    required_version = ">= 1.5.6"
    backend "s3" {
        bucket = local.backend_bucket_name
        key = local.backend_bucket_key
        region = local.aws_region
    }
}