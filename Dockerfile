# we choose the lts version
FROM node:lts

LABEL maintainer="shibli05@gmail.com"

# set working directory
WORKDIR /app

# copy and install app dependencies
COPY package.json /app/package.json
RUN npm install
RUN npm install -g @angular/cli@7.3.9

# add app
COPY . /app

# expose port
EXPOSE 4200

# start app
CMD ["ng",  "serve", "--host", "0.0.0.0"]
