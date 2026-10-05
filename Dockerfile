# Use Node 16 for the app
FROM node:16

# Set the working folder inside the container
WORKDIR /app

# Copy package.json into the container
COPY package.json .

# Install the app dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Show that the app uses port 3000
EXPOSE 3000

# Start the app with npm start
CMD ["npm", "start"]