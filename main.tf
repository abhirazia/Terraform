terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.95.0"
    }
  }
}
provider "aws"  {
  region = "us-east-1"  
}

resource "random_id" "rand_id" {
 byte_length = 8  
}

/*resource "aws_s3_bucket" "bucket-data" {
  bucket =  "demoabdbucket${random_id.rand_id.hex}"               # "demoabdbucket3"
}*/

resource "aws_s3_bucket" "bucket_demo" {
bucket = "demoabdbucket1"
} 

resource "aws_s3_object" "upload_file" {
  bucket =  aws_s3_bucket.bucket_demo.bucket
  key    = "myfile.txt"
  source = "./myfile.txt"
  #acl    = "private"
}

output "name" {
    value = random_id.rand_id.hex
}