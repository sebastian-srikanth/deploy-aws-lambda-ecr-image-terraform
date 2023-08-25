terraform {
    required_version = ">= 1.5.6"
    backend "s3" {
        encrypt = true
    }
}