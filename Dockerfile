# Specify the base image/OS your applicaiton needs to run. In this case we choose a RHEL8 base image with Node.JS 18
FROM registry.access.redhat.com/ubi8/nodejs-18:1-71.1695741533

# Sepcify the project directory
WORKDIR /project

# 
COPY --chown=1001:1001 package.json package-lock.json ./

#
RUN npm ci

#
COPY --chown=1001:1001 . .

#
VOLUME ["/project/.angular"]

# Expose the application running on your container to OpenShift
EXPOSE 8080

# Specify OpenShift how to start your application
CMD ["npm", "start"]
