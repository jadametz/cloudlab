# Helm

[Kubernetes package manager](https://helm.sh/)

## Setup

RBAC configuration is necessary before initializing Helm and Tiller.

```bash
$ kubectl apply -f rbac-config.yaml
$ helm init --service-account tiller
```
