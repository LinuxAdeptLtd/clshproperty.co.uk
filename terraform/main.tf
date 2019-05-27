
provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "s3_bucket" {
  provider  = "aws"
  region    = "eu-west-2"
  bucket    = "clshproperty.co.uk"
  acl       = "public-read"
  website {
    index_document = "index.html"
    error_document = "404.html"
  }
  tags {
  }
  force_destroy = true
}


