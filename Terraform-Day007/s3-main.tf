resource "aws_s3_bucket" "dc_bucket" {
  bucket = "dc-is-better-than-marvel"
}
resource "aws_s3_bucket_object" "upload" {
    bucket = "pixar-studios-2022"
    key = "file_to_be_uploaded.jpg"
    source = "/file/path/file_to_be_uploaded.jpg"
  
}
