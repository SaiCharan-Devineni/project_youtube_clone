FROM node:16
WORKDIR /myapp
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 8888
CMD ["npm","start"]

