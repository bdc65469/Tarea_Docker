# Usar la imagen oficial de PHP con Apache
FROM php:7.4-apache

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Copiar el sitio web y el script PHP al contenedor
COPY . /var/www/html/

# Hacer que Apache pueda servir el contenido
RUN chown -R www-data:www-data /var/www/html

# Habilitar mod_rewrite para permitir URLs limpias si es necesario
RUN a2enmod rewrite

# Exponer el puerto 80 (Apache por defecto)
EXPOSE 80