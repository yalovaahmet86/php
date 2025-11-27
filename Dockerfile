FROM php:8.2-apache

# Çalışma dizinini ayarla
WORKDIR /var/www/html

# Projedeki tüm dosyaları kopyala
COPY . .

# Apache'yi yapılandır (gerekirse)
RUN a2enmod rewrite

# Port 80'i aç
EXPOSE 80

# Apache'yi başlat
CMD ["apache2-foreground"]
