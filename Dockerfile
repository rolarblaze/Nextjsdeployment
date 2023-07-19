#base image 

FROM node:16.14.2-alpine

# set a working directory 
WORKDIR /usr/app

COPY . .

RUN npm ci --only=production

RUN npm run build

CMD [ "npm", "start" ]
