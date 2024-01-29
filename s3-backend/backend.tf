terraform {
  backend "s3" {
    bucket         = "mybalti100"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
