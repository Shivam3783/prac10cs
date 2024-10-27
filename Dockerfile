# FROM node:18-alpine
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY index.js .
# EXPOSE 3000
# CMD ["node" , "index.js"]

FROM node:18-alpine
WORKDIR /app
# Copy package.json and package-lock.json, then install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port and specify the command to run
EXPOSE 3000
CMD ["node", "index.js"]
