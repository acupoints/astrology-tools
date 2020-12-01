FROM node:8 as web-build
 
#Setting the working directory as /app
WORKDIR /app
 
#Copying package.json to Docker Image
COPY package.json /app
 
#Installing all dependencies.
RUN npm install
 
# Running the dev server.
CMD ["npm", "start"]