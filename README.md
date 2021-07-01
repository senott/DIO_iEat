# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies \

    PostgreSQL:\
      Create new Docker container: \
        ```$
        docker run --name dio_postgres -e POSTGRES_PASSWORD=pgsqldocker -d -p 5433:5432 postgres
        ```

      Start Docker container: \
        ```$
        docker start dio_postgres
        ```

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
