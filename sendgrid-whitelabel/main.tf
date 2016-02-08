variable "domain" {}
variable "sendgriduser" {}

resource "cloudflare_record" "em.${domain}" {
    domain = "${domain}"
    name = "em"
    value = "${sendgriduser}.wl.sendgrid.net"
    type = "CNAME"
    ttl = 1
}

resource "cloudflare_record" "s1-domainkey.${domain}" {
    domain = "${domain}"
    name = "s1._domainkey"
    value = "s1.domainkey.${sendgriduser}.wl.sendgrid.net"
    type = "CNAME"
    ttl = 1
}

resource "cloudflare_record" "s2-domainkey.${domain}" {
    domain = "${domain}"
    name = "s2._domainkey"
    value = "s2.domainkey.${sendgriduser}.wl.sendgrid.net"
    type = "CNAME"
    ttl = 1
}
