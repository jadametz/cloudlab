# DigitalOcean

These resources are Kubernetes resources that are specific to DigitalOceans (at least in configuration) API.

## external-dns

Configures DNS based on K8s ingress.

### Secrets

* `do_token` is required to communicate with the DigitalOcean API. It is not source controlled and should be added to the `external-dns-do-token` secret after applying `external-dns.yaml`.
