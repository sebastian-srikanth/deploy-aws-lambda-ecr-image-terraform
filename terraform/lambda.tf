resource "aws_lambda_function" "aws_lambda_resource" {
    function_name = "deploy-aws-lambda"
    role = aws_iam_role.lambda_role.arn
    runtime = "python3.11"
    handler = "lamda_function.handler"
    image_uri = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${var.region}.amazonaws.com/${aws_ecr_repository.ecr_repo.name}:ACTUAL"
  }

resource "aws_iam_role" "lambda_role" {
  name = "deploy-aws-lambda-execution-role"
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy_attachment" "lambda_policy_attachment" {
  name       = "deploy-aws-lambda-policy-attachment"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  
  roles = [aws_iam_role.lambda_role.name]
}