variable "aws_region" {
    description = "AWS Region where resources needs to be created"
    type = string
    default = "ap-south-1"
}

variable "backend_bucket_name" {
    type = string
}

variable "backend_bucket_key_name" {
    type = string
}
