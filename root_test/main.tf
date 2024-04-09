# Test module from terraform registry
module "test_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 1.0"

  bucket = "test-bucket-name"
  acl = "private"

  versioning = {
    enabled = true
  }
}
# Test module in git monorepo
module "test_module" {
  source  = "github.com/acaylor/renovate-tf-test-modules.git//modules/test-module?ref=test-module-v0.0.1"
}