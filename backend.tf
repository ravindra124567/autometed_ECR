terraform {
  backend "s3" {
    bucket         = "my-ecr-bucket-terraform"
    key            = "terraform/state.tfstate"
    region         = "us-east-1" 
    dynamodb_table = "terraform-locks"
  }
}
