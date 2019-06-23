# Prometheus & Grafana

## Setup

```bash
$ helm install --name prom stable/prometheus -f prometheus-values.yml
$ helm install --name grafana stable/grafana -f grafana-values.yml
```

### Config Maps

**Alert Manager**

* `slack_api_url` is a private value and should not be source controlled. The value should be added after applying `prometheus-values.yml`.
