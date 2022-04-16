provider "aws" {
  region                      = lookup(var.region, terraform.workspace)
  s3_force_path_style = true

}
