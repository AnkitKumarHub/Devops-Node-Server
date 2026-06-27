# Stage 1: Build - this is operating System where nodejs is already installed
FROM node:24-alpine

# copy the index.js file to the container
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js 

RUN npm install

CMD ["node", "index"]
