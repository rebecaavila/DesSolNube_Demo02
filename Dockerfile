FROM php:8.1-apache

# Instalar dependencias necesarias para PostgreSQL
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pgsql pdo_pgsql

# Configurar Apache para escuchar en el puerto 90
RUN sed -i 's/Listen 80/Listen 90/' /etc/apache2/ports.conf \
    && sed -i 's/:80/:90/' /etc/apache2/sites-enabled/000-default.conf

# Copiar contenido de toda la app en el contenedor
COPY . /var/www/html/

# Exponer el puerto 90
EXPOSE 90
