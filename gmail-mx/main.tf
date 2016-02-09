variable "domain" {}
resource "cloudflare_record" "gmail-aspmx" {
    domain = "${var.domain}"
    name = "${var.domain}"
    value = "aspmx.l.google.com"
    type = "MX"
    ttl = 1
    priority = 1
}

resource "cloudflare_record" "gmail-alt1" {
    domain = "${var.domain}"
    name = "${var.domain}"
    value = "alt1.aspmx.l.google.com"
    type = "MX"
    ttl = 1
    priority = 5
}

resource "cloudflare_record" "gmail-alt2" {
    domain = "${var.domain}"
    name = "${var.domain}"
    value = "alt2.aspmx.l.google.com"
    type = "MX"
    ttl = 1
    priority = 5
}

resource "cloudflare_record" "gmail-alt3" {
    domain = "${var.domain}"
    name = "${var.domain}"
    value = "alt3.aspmx.l.google.com"
    type = "MX"
    ttl = 1
    priority = 10
}

resource "cloudflare_record" "gmail-alt4" {
    domain = "${var.domain}"
    name = "${var.domain}"
    value = "alt4.aspmx.l.google.com"
    type = "MX"
    ttl = 1
    priority = 10
}

