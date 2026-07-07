[![Current Version](https://raw.githubusercontent.com/simons-containers/distroless-telegraf/badges/.badges/main/release.svg)](https://github.com/simons-containers/distroless-telegraf/pkgs/container/distroless-telegraf) [![Tags](https://raw.githubusercontent.com/simons-containers/distroless-telegraf/badges/.badges/main/tags.svg)](https://github.com/simons-containers/distroless-telegraf/pkgs/container/distroless-telegraf) <br> ![Current Size](https://raw.githubusercontent.com/simons-containers/distroless-telegraf/badges/.badges/main/size.svg) ![Wasted Size](https://raw.githubusercontent.com/simons-containers/distroless-telegraf/badges/.badges/main/wasted.svg) ![Efficiency](https://raw.githubusercontent.com/simons-containers/distroless-telegraf/badges/.badges/main/efficiency.svg) <br> ![Critical](https://raw.githubusercontent.com/simons-containers/distroless-telegraf/badges/.badges/main/critical.svg) ![High](https://raw.githubusercontent.com/simons-containers/distroless-telegraf/badges/.badges/main/high.svg) ![Medium](https://raw.githubusercontent.com/simons-containers/distroless-telegraf/badges/.badges/main/medium.svg) ![Low](https://raw.githubusercontent.com/simons-containers/distroless-telegraf/badges/.badges/main/low.svg) <br> [![Publish Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-telegraf/deploy.yaml?label=Publish%20Workflow&logo=github)](https://github.com/simons-containers/distroless-telegraf/actions/workflows/deploy.yaml) [![Update Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-telegraf/update-versions.yaml?label=Update%20Workflow&logo=github)](https://github.com/simons-containers/distroless-telegraf/actions/workflows/update-versions.yaml)

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

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **Telegraf**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **Telegraf** - Agent for collecting, processing, aggregating, and writing metrics, logs, and other arbitrary data.  
  https://influxdata.com/telegraf
