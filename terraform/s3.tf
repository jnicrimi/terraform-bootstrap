module "tfstate_bucket" {
  source = "./modules/s3"

  bucket_name = var.tfstate_bucket_name
}
