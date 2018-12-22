resource "digitalocean_kubernetes_cluster" "k8s" {
    name    = "c5r"
    region  = "sfo2"
    version = "1.13.1-do.2"

    node_pool {
        name        = "workers"
        size        = "s-1vcpu-2gb"
        node_count  = 1
    }
}

provider "kubernetes" {
    host = "${digitalocean_kubernetes_cluster.k8s.endpoint}"

    client_certificate      = "${base64decode(digitalocean_kubernetes_cluster.k8s.kube_config.0.client_certificateb)}"
    client_key              = "${base64decode(digitalocean_kubernetes_cluster.k8s.kube_config.0.client_key)}"
    cluster_ca_certificate  = "${base64decode(digitalocean_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate_)}"
}