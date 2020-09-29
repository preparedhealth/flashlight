FROM node:12.18.4-alpine

ARG APP_DIR=/opt/app
WORKDIR $APP_DIR

COPY package.json $APP_DIR/
RUN npm install

COPY lib/ $APP_DIR/lib/
COPY local_app.js $APP_DIR/app.js
COPY config.js $APP_DIR/

CMD ["node", "./app.js"]
