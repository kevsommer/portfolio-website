FROM node:18-alpine

WORKDIR ./

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

RUN npm install -g serve

EXPOSE 3002

CMD ["serve", "dist", "-l", "3002"]
