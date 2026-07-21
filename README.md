# 🐳 Локальный стенд веб-приложения

Стек: **Nginx** (reverse proxy + TLS) → **httpbin** (backend) + **PostgreSQL 15** + **Redis**.

## 📋 Требования
- Docker & Docker Compose
- OpenSSL (для генерации сертификатов)

## 🚀 Быстрый старт

1. **Клонируйте репозиторий и перейдите в папку проекта**
   ```bash
   cd local-stack
Сгенерируйте self-signed сертификаты

bash
./gen-certs.sh
Создайте файл с переменными окружения

bash
cp .env.example .env
# При необходимости отредактируйте пароли в .env
Запустите стенд

bash
docker-compose up -d
Проверьте работу

bash
curl -k https://localhost/status
# Должен вернуть "OK"
