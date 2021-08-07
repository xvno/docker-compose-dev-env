FROM nginx

COPY devhost.crt /etc/ssl/devhost.crt
COPY devhost.key /etc/ssl/devhost.key
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 443
EXPOSE 8000
EXPOSE 1443

VOLUME ["/server/assets", "/server/log"]