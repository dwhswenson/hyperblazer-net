terraform {
  required_version = ">= 1.0"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "= 5.9.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

variable "cloudflare_account_id" {
  description = "Cloudflare account ID that will own the Pages project and DNS zone."
  type        = string
  sensitive   = true
}

locals {
  github_repository       = "dwhswenson/hyperblazer-net"
  github_owner            = split("/", local.github_repository)[0]
  cloudflare_project_name = "hyperblazer-net"
  cloudflare_token_name   = "hyperblazer-net-pages"
  planned_domain          = "hyperblazer.net"
}

provider "github" {
  owner = local.github_owner
}

module "cloudflare_pages" {
  source = "git::https://github.com/omsf/static-site-tools.git//modules/cloudflare_pages?ref=6786756"

  cloudflare_token_name   = local.cloudflare_token_name
  cloudflare_project_name = local.cloudflare_project_name
  cloudflare_account_id   = var.cloudflare_account_id
}

module "github_vars" {
  source = "git::https://github.com/omsf/static-site-tools.git//modules/github_vars?ref=6786756"

  github_repository                = local.github_repository
  cloudflare_account_id            = var.cloudflare_account_id
  cloudflare_token                 = module.cloudflare_pages.cloudflare_token
  cloudflare_project_name          = local.cloudflare_project_name
  cloudflare_project_name_var_name = "CLOUDFLARE_JEKYLL_PROJECT_NAME"
}

# This only provisions the website-related DNS. Add mail and other non-web
# records before changing the registrar's nameservers to Cloudflare.
#resource "cloudflare_zone" "hyperblazer_net" {
  #account = {
    #id = var.cloudflare_account_id
  #}

  #name = local.planned_domain
  #type = "full"
#}

#resource "cloudflare_dns_record" "apex" {
  #zone_id = cloudflare_zone.hyperblazer_net.id
  #name    = "@"
  #type    = "CNAME"
  #content = module.cloudflare_pages.cloudflare_subdomain
  #ttl     = 1
  #proxied = true
  #comment = "Route the apex domain to the Cloudflare Pages project."
#}

#resource "cloudflare_dns_record" "www" {
  #zone_id = cloudflare_zone.hyperblazer_net.id
  #name    = "www"
  #type    = "CNAME"
  #content = module.cloudflare_pages.cloudflare_subdomain
  #ttl     = 1
  #proxied = true
  #comment = "Route www to the Cloudflare Pages project."
#}

#resource "cloudflare_pages_domain" "apex" {
  #account_id   = var.cloudflare_account_id
  #project_name = local.cloudflare_project_name
  #name         = local.planned_domain

  #depends_on = [cloudflare_dns_record.apex]
#}

#resource "cloudflare_pages_domain" "www" {
  #account_id   = var.cloudflare_account_id
  #project_name = local.cloudflare_project_name
  #name         = "www.${local.planned_domain}"

  #depends_on = [cloudflare_dns_record.www]
#}

#output "cloudflare_pages_subdomain" {
  #description = "The generated pages.dev hostname for the Cloudflare Pages project."
  #value       = module.cloudflare_pages.cloudflare_subdomain
#}

#output "cloudflare_zone_name_servers" {
  #description = "Nameservers to set at the registrar when you move hyperblazer.net to Cloudflare DNS."
  #value       = cloudflare_zone.hyperblazer_net.name_servers
#}
