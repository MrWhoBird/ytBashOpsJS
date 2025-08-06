FROM node:current-alpine3.22
WORKDIR /app
COPY . /app/
RUN npm install
EXPOSE 3000
CMD node ./index.js