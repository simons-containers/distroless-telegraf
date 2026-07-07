FROM archlinux:base-devel-20260308.0.497099 AS builder

ARG TELEGRAF_VERSION
ARG TELEGRAF_RELEASE=https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}_linux_amd64.tar.gz

WORKDIR /extract/telegraf
RUN curl --silent --show-error --location --output telegraf.tar.gz \
  "${TELEGRAF_RELEASE}" \
  && tar xf telegraf.tar.gz --strip-components=1

FROM scratch
ARG TELEGRAF_VERSION

COPY --from=builder /extract/telegraf/usr/bin/telegraf /usr/bin/telegraf

WORKDIR /var/lib/telegraf
ENV HOME=/var/lib/telegraf

ENTRYPOINT ["/usr/bin/telegraf"]
CMD ["--config-directory", "/etc/telegraf"]

LABEL org.opencontainers.image.title="distroless telegraf"
LABEL org.opencontainers.image.description="distroless telegraf"
LABEL org.opencontainers.image.version="${TELEGRAF_VERSION}"
LABEL org.opencontainers.image.source="https://github.com/simons-containers/distroless-telegraf"
LABEL org.opencontainers.image.volumes.config="/etc/telegraf/telegraf.conf"
LABEL org.opencontainers.image.volumes.data="/var/lib/telegraf"
