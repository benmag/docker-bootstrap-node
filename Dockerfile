FROM ubuntu:trusty

MAINTAINER Ben Maggacis, ben.maggacis@qut.edu.au

# Install packages
RUN apt-get update && apt-get -yq install nodejs npm

# Environment variables
# Run npm install on startup (set as blank to not run e.g. `NPM_INSTALL=`)
ENV NPM_INSTALL=true

# Run a nodejs script on startup (set as blank to not run anything)
ENV RUN_SCRIPT=index.js 

# Add run script
ADD run.sh /run.sh

# Mount volume
VOLUME /app

CMD ["/run.sh"]