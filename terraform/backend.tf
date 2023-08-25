terraform {
    required_version = ">= 1.5.6"
    backend "s3" {
        bucket = deploy-aws-lambda-image-tf-state
        key = var.backend_bucket_key
        region = deploy_lambda.tfstate
    }
}