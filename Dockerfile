FROM node:9

WORKDIR /app

RUN npm install -g contentful-cli

COPY package.json .
RUN npm install

COPY . .

USER node
EXPOSE 3000
EXPOSE 443

CMD ["npm", "run", "start:dev"]
