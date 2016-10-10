variable "domain" {}
variable "dest" {}
resource "cloudflare_record" "bare-domain" {
    domain = "${var.domain}"
    name = "${var.domain}"
    value = "${var.dest}"
    type = "CNAME"
    ttl = 1
    proxied = true
}

resource "cloudflare_record" "www-subdomain" {
    domain = "${var.domain}"
    name = "www"
    value = "${var.dest}"
    type = "CNAME"
    ttl = 1
    proxied = true
}
