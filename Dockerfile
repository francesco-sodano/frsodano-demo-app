FROM node:8
# Create app directory
WORKDIR /usr/src/frsodano-demo-app
# Install app dependencies
COPY package*.json ./
RUN npm install
# bundle app source
COPY . .

EXPOSE 8080
CMD ["npm", "start"]