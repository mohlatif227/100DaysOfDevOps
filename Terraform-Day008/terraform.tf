terraform {
  backend "s3"{
      bucket = "s3-bucket-to-store-terraform.tfstate-file"
      key = "finance/terraform.tfstate"
      region = "us-east-1" # S3 bucket location
      dynamodb_table = "state-locking" #make sure that dynamodb table is create beforehand

  }
  
}
