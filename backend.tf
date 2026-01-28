terraform {
  backend "s3" {
    bucket = "sangu-ragaate-1234"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
