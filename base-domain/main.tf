variable "domain" {}
variable "clean-domain" { default = "${replace("${domain}",".","-")}"}
variable "dest" {}

resource "cloudflare_record" "root-${clean-domain}" {
    domain = "${domain}"
    name = "@"
    value = "${dest}"
    type = "CNAME"
    ttl = 1
}

resource "cloudflare_record" "www-${domain}" {
    domain = "${domain}"
    name = "www"
    value = "${dest}"
    type = "CNAME"
    ttl = 1
}
