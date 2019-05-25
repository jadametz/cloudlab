variable "do_token" {}

provider "digitalocean" {
    token   = "${var.do_token}"
    version = "v1.1.0"
}

terraform {
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "jadametz"

        workspaces {
            name = "do-cloudlab"
        }
    }
}
