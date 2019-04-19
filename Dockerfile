FROM node:10.14.2-alpine

ADD . /app
WORKDIR /app
COPY package.json .

RUN npm install --production

COPY . .

RUN addgroup -S pptruser && adduser -S -g pptruser pptruser \
  && mkdir -p /home/pptruser/Downloads \
  && chown -R pptruser:pptruser /home/pptruser \
  && chown -R pptruser:pptruser /app

USER pptruser

EXPOSE 8080

CMD [ "npm", "start" ]