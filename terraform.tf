terraform {

  cloud {
    organization = "Modrakovic"

    workspaces {
      name = "Traject"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
    okta = {
      source = "okta/okta"
      version = "~> 3.42"
    }
  }

  required_version = ">= 0.14.0"
}

# Configure the Okta Provider
provider "okta" {
  org_name  = "ccv-trial-6836622"
  base_url  = "okta.com"
  api_token = "00i4deBRBNxuCGGGSvDDZdVctqlCgUNg2WoPAo75J7"
}
