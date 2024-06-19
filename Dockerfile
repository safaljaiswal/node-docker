# node.js image
FROM node:14
# setting the working directory
WORKDIR /usr/src/app
# Copying packages and dependencies
COPY package*.json ./
# To install dependencies
RUN npm install
# Copy the application code
COPY . .
# port number for the application to be exposed
EXPOSE 3000
# cmd run the application
CMD ["node", "index.js"]
# for practice changes use this line only.
