terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.38.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "test_AWS_ACCESS_KEY_ID"
  secret_key = "test_AWS_SECCRET_ACCESS_KEY_ID"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    s3             = "http://localhost:5000"
  }
}

data "aws_s3_object" "test" {
  bucket = "the-bucket"
  key = "test.json"
}

output "json" {
  value = data.aws_s3_object.test.body
}
