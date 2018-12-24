# Prometheus & Grafana

## Setup

```bash
$ helm install --name prom stable/prometheus
$ helm install --name grafana stable/grafana -f grafana-values.yml
```
