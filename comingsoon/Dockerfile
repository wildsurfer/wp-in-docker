FROM nginx:1.13.3-alpine
RUN mkdir -p /var/www/html
COPY index.html /var/www/html/index.html
RUN chown -R nginx:nginx /var/www/html
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf
