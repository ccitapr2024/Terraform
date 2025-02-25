provider "aws" {
  region = "ap-south-2"  # Updated AWS region
}

# Create an S3 bucket
resource "aws_s3_bucket" "ccit_s3" {
  bucket = "ccit-public-bucket"
  tags = { Name = "ccit-public-bucket" }
}

output "s3_bucket_name" {
description = "The name of the created S3 bucket"
value = aws_s3_bucket.ccit_s3.id
}
