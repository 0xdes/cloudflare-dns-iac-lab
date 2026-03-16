terraform {
  required_version = ">= 1.9"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0" # Latest stable in March 2026 is ~5.18–5.19; ~> 5.0 is safe
    }
  }
}
