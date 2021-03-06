# Задаёт базовый (родительский) образ
FROM ruby:2.7.5

# Установка postgresql-client
RUN apt update && \
    apt -y install postgresql-client

# Копирует файлы и папки в папку /app
ADD . /app

# Задаёт рабочую директорию для следующей инструкции
WORKDIR /app

# Выполняет команду 'bundle install' - установка гемов
RUN bundle install

# Указывает на необходимость открыть порт наружу
EXPOSE 8080

# Описывает команду с аргументами, которую нужно выполнить когда контейнер будет запущен
CMD ["bash", "/app/scripts/run_puma.sh"]
