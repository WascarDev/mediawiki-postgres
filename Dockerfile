FROM mediawiki:latest

RUN apt update
RUN apt install libpq-dev unzip zip -y
RUN rm -rf /var/lib/apt/lists/* 

RUN docker-php-ext-install pgsql pdo pdo_pgsql
