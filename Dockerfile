FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.gmhqj05.mongodb.net
ENV MONGODB_USERNAME gpatino2
ENV MONGODB_PASSWORD RgIiObOV5i0fRCVZ

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]