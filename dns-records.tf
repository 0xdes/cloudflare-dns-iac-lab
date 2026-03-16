data "cloudflare_zone" "domain" {
  name = var.domain
}


resource "cloudflare_record" "proxmox" {
  zone_id = data.cloudflare_zone.domain.id #
  name    = "megamind"
  content = "192.168.3.2" # example private IP
  type    = "A"
  ttl     = 300
  proxied = false
  comment = "Proxmox VE dashboard - internal only"
}
