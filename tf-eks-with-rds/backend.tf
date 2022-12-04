terraform {
  backend "s3" {
    bucket = "tf-state-eks-YOUR_BUCKET_CHANGEME"
    key    = "tf-state-eks.dev"
    region = "us-west-2"
  }
}
