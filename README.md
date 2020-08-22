# Локальный запуск проекта

Инструкция по разворачиванию проекта локально!
Все команды выполняются из корневой директории, в которой находится  docker-compose.yml

Окружение проекта реализуется на docker-сервисах, поэтому убедитесь, что у вас установлен [docker](https://docs.docker.com/engine/installation/).
Для упрощения работы с сервисами docker используется docker-compose - поэтому убедитесь, что у вас установлен [docker-compose](https://docs.docker.com/compose/install/).

##1. Собираем проект:
### docker-compose build
или без кеша 
### docker-compose build --no-cache

### docker-compose up 

### тестовые данные
тестовый пользватель: testuser
тестовй пароль: qazwsx



# bgs

> My fantabulous Nuxt.js project

## Build Setup

```bash
# install dependencies
$ npm install

# serve with hot reload at localhost:3000
$ npm run dev

# build for production and launch server
$ npm run build
$ npm run start

# generate static project
$ npm run generate
```

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).
