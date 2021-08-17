FROM node:14-alpine
RUN echo "Building our express app in a Docker image"

COPY . /var/www
WORKDIR /var/www

RUN npm install

EXPOSE 3000

ENTRYPOINT ["npm", "start"]