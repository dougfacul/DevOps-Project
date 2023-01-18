terraform {
  backend "s3" {
    bucket = "remotestate-s3-terraform-dst18102022"
    key = "server_name/statefile"
    region = "us-east-1"
  }
}  
