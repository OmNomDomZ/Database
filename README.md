# Научная Периодика

## Описание проекта

Проект **«Научная Периодика»** представляет собой базу данных для хранения и анализа информации о научных изданиях, авторах, статьях и их публикациях. Реализована структура данных с различными сущностями и связями для удобного хранения данных и выполнения аналитических запросов.

## Запуск проекта

### Предварительные требования

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Установка и запуск

1. **Клонируйте репозиторий:**

   ```bash
   git clone https://github.com/OmNomDomZ/Database.git
   cd Database

2. **Соберите и запустите проект с помощью Docker Compose:**

    ```bash 
    docker-compose up --build

3. **Пример подключения**
    ```bash
    docker exec -it science_periodic_db psql -U science_periodic_user -d science_periodic
