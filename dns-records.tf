
resource "cloudflare_dns_record" "proxmox" {
  zone_id = "721017ac886a93d4307387a9b2339e12"
  name    = "megamind"
  content = "192.168.3.2" # example private IP
  type    = "A"
  ttl     = 300
  proxied = false
  comment = "Proxmox VE dashboard - internal only"
}
