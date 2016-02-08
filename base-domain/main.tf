variable "domain" {}
variable "resourcename" {}
variable "dest" {}
resource "cloudflare_record" "root-${resourcename}" {
    domain = "${domain}"
    name = "@"
    value = "${dest}"
    type = "CNAME"
    ttl = 1
}

resource "cloudflare_record" "www-${resourcename}" {
    domain = "${domain}"
    name = "www"
    value = "${dest}"
    type = "CNAME"
    ttl = 1
}
