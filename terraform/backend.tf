terraform {
    required_version = ">= 1.5.6"

    locals {
        s3_bucket_name = var.backend_bucket_name
        s3_key = var.backend_bucket_key
        s3_region = var.aws_region
    }
    backend "s3" {
        bucket = local.s3_bucket_name
        key = local.s3_key
        region = local.s3_region
  }
}