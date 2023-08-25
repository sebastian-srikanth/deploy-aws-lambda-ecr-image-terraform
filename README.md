# Concept
Update AWS Lambda Code using Container image.

## Infrastructure
Terraform to build:
* Base Lambda Configuration
* ECR Repository

## Code updates
If there is any update in the Lambda code then build the image and push to ecr.

## Folder Structure
* terraform:
    * Create Lambda with base configuration.
    * Create ECR repository.
* Lambda:
    * Dockerfile
    * docker build and push latest code changes.


## github actions:
* During PR ( any branch to main )
    * Check if there is any change in the Lambda Base configuration.
* Merge PR ( any branch to main )
    * Terraform apply the changes if any in the Lambda Base configuration.
    * Build ecr image and push the image to ecr.