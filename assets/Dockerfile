#
# Build assets into an image
#
#
FROM quay.io/wunder/wunder-alpine-base

USER app

RUN mkdir -p /app/web/sites/default && \
    mkdir -p /app/backups

ADD ./files /app/web/sites/default/files
ADD ./backups /app/backups
