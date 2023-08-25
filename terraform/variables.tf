variable "aws_region" {
    description = "AWS Region where resources needs to be created"
    type = string
    default = "ap-south-1"
}

variable "backend_bucket_name" {
    description = "Terraform Backend state s3 bucket name"
    type = string
}

variable "backend_bucket_key" {
    description = "Terraform Backend state s3 bucket KEY name"
    type = string
}
