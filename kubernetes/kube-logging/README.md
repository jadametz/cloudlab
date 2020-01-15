# kube-logging

Basic EFK stack

## Setup

```bash
$ kubectl apply -f namespace.yaml
$ kubectl --namespace kube-logging apply -f elasticsearch-statefulset.yaml
$ kubectl --namespace kube-logging apply -f elasticsearch-svc.yaml
$ kubectl --namespace kube-logging apply -f kibana.yaml
$ kubectl --namespace kube-logging apply -f fluentd.yaml
```
