variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "ecr_repository_name" {
  description = "The name of the ECR repository"
  type        = string
  default     = "terraform-repository"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to store Terraform state"
  type        = string
  default     = "ravindra-ecr-terraform-state-bucket128"
}

variable "state_file_key" {
  description = "The key for the Terraform state file in the S3 bucket"
  type        = string
  default     = "terraform/state.tfstate"
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
  default     = "ecr-terraform-locks-753157"
}
