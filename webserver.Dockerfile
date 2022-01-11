FROM nginx

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /usr/share/nginx/html
COPY ./index.js /usr/share/nginx/html

EXPOSE 80