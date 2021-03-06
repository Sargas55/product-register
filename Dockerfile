# Udemyのコース「米国AI開発者がゼロから教えるDocker講座」で使ったDockerfile
# https://www.udemy.com/course/aidocker/learn/lecture/20295309
# Ruby on Rails+postgresqlでWEBアプリケーションを作成
FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install