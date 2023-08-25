# Concept
Update AWS Lambda Code using Container image

## Infrastructure
Terraform to build
    Base Lambda Configuration
    ECR Repository

## Code updates
If there is any update in the Lambda code then build updated image and push to ecr

## Folder Structure
terraform:
    Base Lambda Configuration
Lambda:
    Dockerfile
    docker build and push latest code changes


github actions:
    During PR
        Check if there is any change in the Lambda Base configuration
    Merge PR
        Terraform apply the changes if any in the Lambda Base configuration
        build updated ecr image and push the image