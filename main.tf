# Define the AWS provider
provider "aws" {
  region = "us-west-2"
}

# Create the S3 buckets
resource "aws_s3_bucket" "adventuretech_bucket" {
  bucket = "adventuretech-js-bucket"
  acl    = "private"
}

resource "aws_s3_bucket" "natureescape_bucket" {
  bucket = "natureescape-js-bucket"
  acl    = "private"
}

resource "aws_s3_bucket" "codecarnival_bucket" {
  bucket = "codecarnival-js-bucket"
  acl    = "private"
}

# Output the names of the created buckets
output "bucket_names" {
  description = "List of created S3 bucket names"
  value       = [
    aws_s3_bucket.adventuretech_bucket.bucket,
    aws_s3_bucket.natureescape_bucket.bucket,
    aws_s3_bucket.codecarnival_bucket.bucket
  ]
}
