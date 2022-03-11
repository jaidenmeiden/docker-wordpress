FROM node:12-alpine

# Directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
COPY node/package.json /usr/src/app
COPY node/postcss.config.js /usr/src/app
COPY node/tailwind.config.js /usr/src/app
RUN npm install
RUN npm install -D tailwindcss@latest postcss@latest autoprefixer@latest
RUN npm install -g postcss-cli
RUN npm install dotenv --save
RUN npm install --save-dev cross-env
RUN npm audit fix

# Port
EXPOSE 3000

# Running the app
CMD ["npm", "run", "dev"]