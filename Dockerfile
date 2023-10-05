FROM registry.access.redhat.com/ubi8/nodejs-18:1-71.1695741533

# USER root

WORKDIR /project

COPY package.json package-lock.json ./
RUN npm ci

COPY . .

EXPOSE 8080

CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "8080"]

# FROM registry.access.redhat.com/ubi8/nodejs-18:1-71.1695741533 
# # FROM node:18-alpine

# WORKDIR /app

# COPY package.json ./

# USER root 

# VOLUME ["/app"]

# RUN npm install

# COPY . ./

# VOLUME ["/.npm/_logs"]


# # RUN npm config set prefix ~/.npm-global
# # RUN export PATH=~/.npm-global/bin:$PATH

# EXPOSE 8080

# USER 1001

# CMD ["ng", "serve"]


# FROM registry.access.redhat.com/ubi8/nodejs-18:1-71.1695741533 
# # RUN echo $(ls -l /)
# USER root

# WORKDIR /project

# RUN npm install @angular/cli

# COPY package.json package-lock.json ./
# RUN npm ci

# COPY . .

# RUN chown -R 1001:1001 /project/

# EXPOSE 8080
# CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "8080"]

#stage 1

# FROM node:18
# WORKDIR /app
# ENV NODE_ENV=development
# COPY --chown=1001:1001 . .
# RUN npm cache clean --force
# RUN npm install 
# EXPOSE 8080
# RUN npm run build --prod
# CMD ["npm", "start"]



# # Create app directory
# WORKDIR /usr/src/app
# # Install app dependencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# # where available (npm@5+)
# COPY package*.json ./
# RUN npm install
# # If you are building your code for production
# # RUN npm ci --omit=dev
# # Bundle app source
# COPY . .
# EXPOSE 8080
# CMD [ "node", "server.js" ]
# CMD ["npm", "start"]
