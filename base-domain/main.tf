variable "domain" {}
variable "resourcename" {}
variable "dest" {}
resource "cloudflare_record" "root-${var.resourcename}" {
    domain = "${var.domain}"
    name = "@"
    value = "${var.dest}"
    type = "CNAME"
    ttl = 1
}

resource "cloudflare_record" "www-${var.resourcename}" {
    domain = "${var.domain}"
    name = "www"
    value = "${var.dest}"
    type = "CNAME"
    ttl = 1
}
