FROM registry.access.redhat.com/ubi8/nodejs-18:1-71

WORKDIR /project

RUN npm install -g @angular/cli@13

COPY package.json package-lock.json ./
RUN npm install

COPY . .
EXPOSE 8080
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "8080"]