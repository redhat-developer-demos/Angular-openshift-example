ARG NODE_VERSION=18.14.2

FROM node:${NODE_VERSION}-slim as base

ARG PORT=3000

ENV NODE_ENV=production

WORKDIR /src

# Build
FROM base as build

COPY package.json  .
RUN npm install 

COPY  . .

RUN npm run build --prod
# RUN npm prune
CMD ["npm", "start"]

# Run
# FROM base

# ENV PORT=$PORT

# COPY --from=build /src/.output /src/.output
# # Optional, only needed if you rely on unbundled dependencies
# # COPY --from=build /src/node_modules /src/node_modules

# CMD [ "node", ".output/server/index.mjs" ]

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
# # RUN npm run build --prod
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
