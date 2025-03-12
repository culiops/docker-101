#!/bin/bash

# Run wordpress container
docker run -d \
  --name app \
  --restart always \
  -e WORDPRESS_DB_HOST=db \
  -e WORDPRESS_DB_USER=culiop_blog \
  -e WORDPRESS_DB_PASSWORD=culiop_blog \
  -e WORDPRESS_DB_NAME=culiop_blog \
  -p 8000:80 \
  --health-cmd="curl -f http://localhost/" \
  --health-interval=30s \
  --health-timeout=10s \
  --health-retries=5 \
  -v wordpress:/var/www/html \
  -v /opt/test.html:/var/www/html/test.html \
  wordpress


# Run mysql container
docker run -d \
  --name db \
  --restart always \
  -e MYSQL_DATABASE=culiop_blog \
  -e MYSQL_USER=culiop_blog \
  -e MYSQL_PASSWORD=culiop_blog \
  -e MYSQL_RANDOM_ROOT_PASSWORD=1 \
  -v db:/var/lib/mysql \
  mysql:8.0