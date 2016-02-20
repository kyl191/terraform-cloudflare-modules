variable "domain" {}
variable "sendgriduser" {}

resource "cloudflare_record" "em" {
    domain = "${var.domain}"
    name = "em"
    value = "${var.sendgriduser}.sendgrid.net"
    type = "CNAME"
    ttl = 1
}

resource "cloudflare_record" "s1-domainkey" {
    domain = "${var.domain}"
    name = "s1._domainkey"
    value = "s1.domainkey.${var.sendgriduser}.sendgrid.net"
    type = "CNAME"
    ttl = 1
}

resource "cloudflare_record" "s2-domainkey" {
    domain = "${var.domain}"
    name = "s2._domainkey"
    value = "s2.domainkey.${var.sendgriduser}.sendgrid.net"
    type = "CNAME"
    ttl = 1
}
