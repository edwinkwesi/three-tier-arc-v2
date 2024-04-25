terraform {
  cloud {
    organization = "edwinkwesi"

    workspaces {
      name = "3-tier-architecture-Advance"
    }
  }
  required_providers {
    aws = {
      version = "~> 5.0.0"
    }
  }
}

module "backend_modules" {
  source = "./backend_modules"

  
}