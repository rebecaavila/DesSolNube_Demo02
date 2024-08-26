FROM php:8.1-apache

#instalar dependencias necesarias para postgreSQL
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pdo_pgsql

#copiar contenido de toda la app en mi contenedor
COPY . /var/www/html/

#expone el puerto 80
EXPOSE 80