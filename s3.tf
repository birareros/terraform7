resource "aws_s3_bucket" "terrabucket" {
  bucket = "terraformbucket"
  acl    = "public-read"

  tags = {
    Name        = "terraform"
    Environment = "terra"
  }
}
