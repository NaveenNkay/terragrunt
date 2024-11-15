#terragrunt.hcl

# Define the remote Terraform configuration in Git
terraform {
  source = "git::https://github.com/NaveenNkay/terragrunt.git"
}

# Define inputs for the module
inputs = {
  region             = "asia-south1"
}

