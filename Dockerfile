# Purpose: Serves HW1 static HTML app using nginx
# Author: Shravani Vasa

FROM nginx:alpine

COPY . /usr/share/nginx/html
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80