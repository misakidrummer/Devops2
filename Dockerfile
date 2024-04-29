FROM ubuntu:latest

RUN apt-get update
RUN apt-get install nginx -y

COPY Opa.html /var/www/html/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]



#FROM node:14

#WORKDIR /opa

#COPY package*.json ./

#RUN npm install

#COPY . .

#EXPOSE 3000

#CMD ["npm", "start"]
