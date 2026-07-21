#!/bin/bash

# Создаём директорию для сертификатов
mkdir -p nginx/ssl

# Генерируем приватный ключ и самоподписанный сертификат на 365 дней
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout nginx/ssl/key.pem \
    -out nginx/ssl/cert.pem \
    -subj "/C=RU/ST=Moscow/L=Moscow/O=DevOps/CN=localhost"

# Даём права на чтение
chmod 644 nginx/ssl/key.pem nginx/ssl/cert.pem

echo "✅ Self-signed certificates generated in nginx/ssl/"
