# Задаёт базовый (родительский) образ
FROM ruby:2.7.5

# Установка postgresql-client
RUN apt update && \
    apt -y install postgresql-client

# postgresql-client
#RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
  #wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
  #apt-get update -qq && \
  #apt-get -y install build-essential postgresql-client-10

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
