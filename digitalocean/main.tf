variable "do_token" {}

provider "digitalocean" {
    token   = "${var.do_token}"
    version = "v1.1.0"
}
