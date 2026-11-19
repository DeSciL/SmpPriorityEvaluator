FROM nginx:1.31.9-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY . /var/www/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
