FROM registry.access.redhat.com/ubi8/nodejs-18:1-71.1695741533

USER root

WORKDIR /project

RUN npm install -g @angular/cli

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
COPY upload/src /tmp/src
RUN chown -R 1001:0 /tmp/src
USER 1001
EXPOSE 8080
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "8080"]
