FROM node:12-alpine

# Name of Node app folder
ARG node_dir

# Directory
RUN mkdir -p /var/www/html
WORKDIR /var/www/html

# Installing dependencies
COPY $node_dir/. /var/www/html
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