data "digitalocean_loadbalancer" "sbtechcoop" {
    name = "ingress"
}

resource "digitalocean_domain" "sbtechcoop" {
    name = "sbtechcoop.com"
}

resource "digitalocean_record" "domain" {
    domain  = "${digitalocean_domain.sbtechcoop.name}"
    type    = "A"
    name    = "@"
    value   = "${data.digitalocean_loadbalancer.sbtechcoop.ip}"
    ttl     = 300
}

resource "digitalocean_record" "www" {
    domain  = "${digitalocean_domain.sbtechcoop.name}"
    type    = "CNAME"
    name    = "www"
    value   = "sbtechcoop.com."
    ttl     = 300
}

output "domain-fqdn"    { value = "${digitalocean_record.domain.fqdn}" }
output "www-fqdn"       { value = "${digitalocean_record.www.fqdn}" }
