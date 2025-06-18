FROM ghcr.io/bitwarden/self-host

ENV BW_DOMAIN=$RAILWAY_PUBLIC_DOMAIN

RUN mkdir -p /data

EXPOSE 8080 

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8080/alive || exit 1
