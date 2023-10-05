FROM registry.access.redhat.com/ubi8/nodejs-18:1-71.1695741533 as node
# RUN echo $(ls -l /)
USER root

# WORKDIR /project

# RUN npm install @angular/cli

# COPY package.json package-lock.json ./
# RUN npm ci

# COPY . .

# RUN chown -R 1001:1001 /project/

# EXPOSE 8080
# CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "8080"]

#stage 1
# FROM node:latest as node
# WORKDIR /app
# COPY --chown=1001:1001 . .
# RUN npm cache clean --force
# RUN npm install
# EXPOSE 8080
# RUN npm run build --prod
# CMD ["npm", "start"]

#stage 2
# FROM nginx:alpine
# COPY --from=node /app/dist/hello-world-app /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]

COPY package*.json ./

# Install npm production packages 
RUN npm install --production

COPY . /opt/app-root/src

ENV NODE_ENV production
ENV PORT 8080

EXPOSE 8080

CMD ["npm", "start"]
