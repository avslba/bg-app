FROM node:6.5.0

RUN mkdir -p /usr/games/apps/production/bg-app

# Create app directory
WORKDIR /usr/games/apps/production/bg-app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./usr/games/apps/production/bg-app

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . /usr/games/apps/production/bg-app

EXPOSE 8000
CMD [ "npm", "start" ]


