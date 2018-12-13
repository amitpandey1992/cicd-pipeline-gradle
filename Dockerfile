FROM node:corbon
WORKDIR /usr/src/ap
COPY package*.json ./
RUN npm install
COPY ..
EXPOSE 8080
CMD ["npm","start"]
