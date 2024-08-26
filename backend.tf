terraform {
  backend "s3" {
    bucket         = "manas-ecr-terraform-state-bucket123"
    key            = "terraform/state.tfstate"
    region         = "us-east-1" 
    dynamodb_table = "ecr-terraform-locks-753159"
  }
}
