FROM nginx:alpine

# demo.html ko uthao aur andar 'index.html' bana kar dalo
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
