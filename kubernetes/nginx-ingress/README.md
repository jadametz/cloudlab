# nginx-ingress

## Setup

```bash
$ helm install nginx-ingress stable/nginx-ingress \
  --set rbac.create=true \
  --set controller.publishService.enabled=true
```
