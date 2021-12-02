FROM demery/docker-cra:v0.1.0-alpha.5

COPY env.schema.js ./env.schema.js
COPY build /usr/share/nginx/html

WORKDIR /usr/app