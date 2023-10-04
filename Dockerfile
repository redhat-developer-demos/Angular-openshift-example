FROM registry.access.redhat.com/ubi8/nodejs-18:1-71.1695741533

WORKDIR /project

RUN npm install -g @angular/cli

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
EXPOSE 8080
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "8080"]