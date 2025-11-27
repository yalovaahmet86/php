FROM php:8.2-apache

# Çalışma dizinini ayarla
WORKDIR /var/www/html

# Projedeki tüm dosyaları kopyala
COPY . .

# Dosya izinlerini düzelt (ÖNEMLİ!)
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Apache'yi yapılandır
RUN a2enmod rewrite

# Port 80'i aç
EXPOSE 80

# Apache'yi başlat
CMD ["apache2-foreground"]
