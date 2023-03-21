From node:10.15.3-alpine
RUN mkdir -p /home/ciber/node_projects/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app

COPY package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 3000
CMD [ "node", "app.js ]

