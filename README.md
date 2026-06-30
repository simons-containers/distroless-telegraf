# Distroless Telegraf container

Bare-bones distroless Telegraf container image.

## Running

Mount configuration at `/etc/telegraf/telegraf.conf`.

Example:

```bash
docker run -it --rm \
  -v telegraf.conf:/etc/telegraf/telegraf.conf \
  ghcr.io/simons-containers/distroless-telegraf:latest
```

## Building

| Arg | Description |
|---|---|
| `TELEGRAF_VERSION` | Version of Telegraf to use

Build container using build-args from versions.yaml:

```bash
docker build -t \
  distroless-telegraf:$(yq -r .telegraf versions.yaml) \
  $(yq -r 'to_entries | .[] | "--build-arg \(.key | ascii_upcase)_VERSION=\(.value)"' versions.yaml) -f Containerfile .
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **Telegraf**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **Telegraf** - Agent for collecting, processing, aggregating, and writing metrics, logs, and other arbitrary data.  
  https://influxdata.com/telegraf
