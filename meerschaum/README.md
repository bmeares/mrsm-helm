# Meerschaum on Kubernetes

Deploy a Meerschaum API instance on your k8s cluster with the official Helm chart.

## What is the default instance?

For ease of deployment, the default instance in this configuration (named `sql:prod`) points to a SQLite file in the persistent volume. The user may configure additional connectors as usual.

## How do I change the default instance?

You can edit the default instance in [`MRSM_CONFIG`](https://meerschaum.io/reference/environment/#mrsm_config), set in `values.yaml`:

```yaml
# values.yaml
meerschaum:
  config: |-
    {
      "meerschaum": {
        "instance": "sql:prod",
        "api_instance": "sql:prod"
      }
    }
  sql:
    prod: |-
      {
        "uri": "sqlite:////meerschaum/sqlite/prod.db"
      }
```

## Adding Connectors

The URI for `sql:prod` is linked to the environment variable `MRSM_SQL_PROD` in the deployment configuration. Although I'm sure there's a way to allow for dynamic environment variable declarations in `values.yaml`, for the time being, just add additional connectors (if you need any defined at the environment level) under the keys `meerschaum:connectors:<type>:<label>` in `MRSM_CONFIG`.

Users may add their own connectors through the Web Console, which will be persisted to on-disk configuration on the persistent volume.