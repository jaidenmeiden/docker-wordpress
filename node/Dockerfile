# Arguments defined in docker-compose.yml
ARG uid
ARG gid
ARG image_wordpress

FROM $image_wordpress as wordpress

RUN apt-get update && apt-get install -y  \
 nodejs \
 npm

# Directory
WORKDIR /var/www/html
# Installing dependencies
RUN npm install
RUN npm install -D tailwindcss@latest postcss@latest autoprefixer@latest
RUN npm install -g postcss-cli
RUN npm install dotenv --save
RUN npm install --save-dev cross-env
#RUN npm audit fix