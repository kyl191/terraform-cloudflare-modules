variable "domain" {}
resource "cloudflare_record" "${domain}-gmail-aspmx" {
    domain = "${domain}"
    name = "@"
    value = "aspmx.l.google.com"
    type = "MX"
    ttl = 1
    priority = 1
}

resource "cloudflare_record" "${domain}-gmail-alt1" {
    domain = "${domain}"
    name = "@"
    value = "alt1.aspmx.l.google.com"
    type = "MX"
    ttl = 1
    priority = 5
}

resource "cloudflare_record" "${domain}-gmail-alt2" {
    domain = "${domain}"
    name = "@"
    value = "alt2.aspmx.l.google.com"
    type = "MX"
    ttl = 1
    priority = 5
}

resource "cloudflare_record" "${domain}-gmail-aspmx2" {
    domain = "${domain}"
    name = "@"
    value = "aspmx2.l.google.com"
    type = "MX"
    ttl = 1
    priority = 10
}

resource "cloudflare_record" "${domain}-gmail-aspmx" {
    domain = "${domain}"
    name = "@"
    value = "aspmx3.l.google.com"
    type = "MX"
    ttl = 1
    priority = 10
}

