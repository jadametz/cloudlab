resource "digitalocean_kubernetes_cluster" "k8s" {
    name    = "c5r"
    region  = "sfo2"
    version = "1.16.2-do.2"

    node_pool {
        name        = "workers"
        size        = "s-2vcpu-4gb"
        node_count  = 1
    }
}
