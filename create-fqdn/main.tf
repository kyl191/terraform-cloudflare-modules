variable "domain" {}
variable "name" {}
output "fqdn" {
    value = "${var.name}.${var.domain}"
}
