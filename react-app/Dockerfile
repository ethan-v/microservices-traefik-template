FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install pm2
RUN npm install pm2 -g

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY yarn.lock ./

RUN yarn install --production
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8000

CMD ["yarn", "dev"]