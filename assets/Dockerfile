#
# Build assets into an image
#
#
FROM quay.io/wunder/wunder-alpine-base

USER app

RUN mkdir -p /app/web/sites/default && \
    mkdir -p /app/backups && \
    mkdir -p /app/private

ADD ./files /app/web/sites/default/files
ADD ./private /app/private
