#
# Extends the core db image by adding a default database.  The DB will
# be pre-configured based on build args, which have defaults
#
# Typically use this for access:
#    mysqli://app:app@{DB}/app
#
FROM quay.io/wunder/wundertools-image-fuzzy-mariadb
MAINTAINER james.nesbitt@wunderkraut.com

# Pull some args from the build command line (or docker-compose build: args: )
ARG MYSQL_ROOT_PASSWORD=root
ARG MYSQL_DATABASE=app
ARG MYSQL_USER=app
ARG MYSQL_PASSWORD=app

# Update the package repository and install mariadb applications
#
# - technically mariadb-client is not needed after db is created.
RUN apk --no-cache --update add curl mariadb-client && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/*

# Add Mysql Dump
ADD dump/latest.sql /app/latest.sql

# Initial db setup
#
RUN (/usr/bin/mysqld_safe &) && sleep 3 && \
    mysql --user="root" --password="${MYSQL_ROOT_PASSWORD}" app < /app/latest.sql && \
    rm /app/latest.sql && \
    killall mysqld && \
    sleep 3 # waiting for mysql to die

# Expose port 3306
EXPOSE 3306

ENTRYPOINT ["mysqld_safe"]