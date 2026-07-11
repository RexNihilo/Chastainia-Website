FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY *.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/styles.css
COPY site.js /usr/share/nginx/html/site.js
COPY assets /usr/share/nginx/html/assets
