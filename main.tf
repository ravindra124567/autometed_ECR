provider "aws" {
  region = var.aws_region
}

# Create an S3 bucket for Terraform state
# resource "aws_s3_bucket" "terraform_state" {
#   bucket = var.s3_bucket_name
#   acl    = "private"

#    Ensure the bucket is unique
#     lifecycle {
#     prevent_destroy = true
#   }
# }

# Create a DynamoDB table for Terraform state locking
resource "aws_dynamodb_table" "terraform_lock" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  # Ensure the table is unique
  lifecycle {
    prevent_destroy = true
  }
}

# Create an ECR repository
resource "aws_ecr_repository" "my_ecr_repository" {
  name = var.ecr_repository_name
}

# Output the ECR repository URL
output "ecr_repository_url" {
  value = aws_ecr_repository.my_ecr_repository.repository_url
}
