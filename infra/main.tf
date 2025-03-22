resource "aws_lambda_function" "myfunc" {
  filename         = data.archive_file.zip_the_python_code.output_path
  source_code_hash = data.archive_file.zip_the_python_code.output_base64sha256
  function_name    = "myfunc"
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = "func.lambda_handler"
  runtime          = "python3.8"
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy" "iam_policy_for_resume_project" {
  name        = "aws_iam_policy_for_terraform_resume_project_policy"
  path        = "/"
  description = "AWS IAM Policy for managing the resume project role"
  policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : [
            "logs:CreateLogGroup",
            "logs:CreateLogStream",
            "logs:PutLogEvents"
          ],
          "Resource" : "arn:aws:logs:*:*:*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "dynamodb:UpdateItem",
            "dynamodb:GetItem",
            "dynamodb:PutItem"
          ],
          "Resource" : "arn:aws:dynamodb:*:*:table/CloudResumeChallengeDatabase"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "s3:PutObject",      # Allow the IAM role to upload objects to S3
            "s3:GetObject"       # Allow the IAM role to retrieve objects from S3 (optional)
          ],
          "Resource" : "arn:aws:s3:::nicholaslalor.com/*"  # Specify your bucket name
        }
      ]
    })
}

resource "aws_iam_role_policy_attachment" "attach_iam_policy_to_iam_role" {
  role       = aws_iam_role.iam_for_lambda.name
  policy_arn = aws_iam_policy.iam_policy_for_resume_project.arn
}

data "archive_file" "zip_the_python_code" {
  type        = "zip"
  source_file = "${path.module}/lambda/func.py"
  output_path = "${path.module}/lambda/func.zip"
}

resource "aws_lambda_function_url" "url1" {
  function_name      = aws_lambda_function.myfunc.function_name
  authorization_type = "NONE"

  cors {
    allow_credentials = true
    allow_origins     = ["*"]
    allow_methods     = ["*"]
    allow_headers     = ["date", "keep-alive"]
    expose_headers    = ["keep-alive", "date"]
    max_age           = 86400
  }
}

# Define the S3 bucket resource with your bucket name
resource "aws_s3_bucket" "my_bucket" {
  bucket = "nicholaslalor.com"  # Replace with your actual bucket name
  acl    = "private"            # Set the access control level

  versioning {
    enabled = true  # Optional: Enable versioning for the bucket
  }

  tags = {
    Name        = "nicholaslalor.com"
    Environment = "Dev"
  }
}

# Upload a file to the S3 bucket
resource "aws_s3_bucket_object" "my_file" {
  bucket = aws_s3_bucket.my_bucket.bucket  # Reference the created bucket
  key    = "index.html"       # S3 object key (filename in the bucket)
  source = "C:/Users/bmxma/OneDrive/Desktop/My Resume and Job Sutff/Resume-Website/index.html"  # Local file path (make sure this file exists in the specified location)
  acl    = "private"  # Access control
}
