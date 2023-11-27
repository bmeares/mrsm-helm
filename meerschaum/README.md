# Meerschaum on Kubernetes

Deploy a Meerschaum API instance on your k8s cluster with the official Helm chart.

## What is the default instance?

For ease of deployment, the default instance in this configuration is `sql:local`. The user may configure additional connectors as usual.

## How do I change the default instance?

You can edit the default instance in [`MRSM_CONFIG`](https://meerschaum.io/reference/environment/#mrsm_config):

```bash
MRSM_CONFIG='{
    "meerschaum": {
        "instance": "sql:local",
        "api_instance": "sql:local"
    }
}'
```
