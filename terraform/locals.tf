locals {
    tags = "created by terraform"
    aws_region="ap-south-1"
    backend_bucket_name="deploy-aws-lambda-image-tf-state"
    backend_bucket_key="deploy_lambda.tfstate"
}