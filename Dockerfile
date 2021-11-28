FROM docker-cra

COPY package.json ./
COPY env.schema.js ./env.schema.js
COPY build /usr/share/nginx/html

WORKDIR /usr/app
CMD ["npx", "docker-cra", "-d", "../share/nginx/html", "-s", "./env.schema.js", "&&", "nginx", "-g", "daemon off;"]
ENTRYPOINT ["/docker-entrypoint.sh"]