* __Название дисциплины:__ Технологии разработки программного обеспечения
* __Название лабораторной работы:__ Лабораторная работа №1: создание микросервиса на Spring Boot с базой данных
* __ФИО и группа:__ Филягин С.А. ЗМАС2001
* __Цель лабораторной работы:__ Целью лабораторной работы является знакомство с проектированием многослойной архитектуры Web-API (веб-приложений, микро-сервисов)

#### Для работы требуется 
* Docker v19.03.13 или выше
* docker-compose v1.27.4 или выше
* curl v7.73.01 или выше
* Свободный 8080/80 порт
#### Инструкция по сборке запуску приложения

## Клонирование исходного кода из Git

* ```cd \<project dir\>```
* ```git clone https://github.com/sfilyagin/gitlab```

## Сборка приложения в Maven
Для сборки в терминале выполнить команду:
* ```mvnw clean install```


Перед этим можно запустить и инициализировать базу данных
Запустить базу данных можно так:
 ```
 docker run --name postgres-docker -e POSTGRES_PASSWORD=root -p 5432:5432 postgres
```
Инициализировать так: 
```
docker cp ./src/main/resources/init.sql postgres-docker:/docker-entrypoint-initdb.d/init.sql
docker exec -u postgres postgres-docker psql postgres postgres -f docker-entrypoint-initdb.d/init.sql
```

## Cборка docker-образов
В файле  описан способ сборки в Docker двух контейнеров для их совместной работы как одно приложение. Docker-compose будет использовать  для сборки приложения:
Для сборки контейнеров выполнить команду:
``` docker-compose build ```
Для создания приложения выполнить команду:
 ``` docker-compose create ```

## Запуск docker-контейнеров
Для запуска приложения выполнить команду:
``` docker-compose up ```

## Работа с приложением
Приложение запускает веб-сервер, доступный локально через сокет localhost:8080.
Веб-сервер имеет следующие конечные точки:
__Status__

* ```curl -X GET http://localhost:8080/api/v1/status```
* ```curl -X GET http://localhost:8080/api/v1/products```
* ```curl -X GET http://localhost:8080/api/v1/products/2```
* ```curl -X DELETE http://localhost:8080/api/v1/products/2```


