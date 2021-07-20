#Remote Backend Configuration
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "btool"

    workspaces {
      name = "udemy_tut"
    }
  }
}
#Provider Configuration
provider "aws" {
  region     = "eu-west-2"
  access_key = var.access_key
  secret_key = var.secret_key

}
#S3 Bucket Configuration

resource "aws_s3_bucket" "test" {
  bucket_prefix = "test-"
}
