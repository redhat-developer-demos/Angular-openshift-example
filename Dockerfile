FROM registry.access.redhat.com/ubi8/nodejs-18:1-71.1695741533

WORKDIR /project

COPY --chown=1001:1001 package.json package-lock.json ./

RUN npm ci

COPY --chown=1001:1001 . .

VOLUME ["/project/.angular"]

EXPOSE 8080

CMD ["npm", "start"]
