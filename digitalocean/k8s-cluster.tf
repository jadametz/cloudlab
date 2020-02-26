resource "digitalocean_kubernetes_cluster" "k8s" {
    name    = "c5r"
    region  = "sfo2"
    version = "1.16.6-do.0"

    node_pool {
        name        = "workers"
        size        = "s-1vcpu-2gb"
        node_count  = 1
    }
}
