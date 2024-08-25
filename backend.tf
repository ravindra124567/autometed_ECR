terraform {
  backend "s3" {
    bucket         = var.s3_bucket_name
    key            = var.state_file_key
    region         = var.aws_region
    dynamodb_table = var.dynamodb_table_name
  }
}
