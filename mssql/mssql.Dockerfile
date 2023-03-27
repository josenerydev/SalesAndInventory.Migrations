FROM mcr.microsoft.com/mssql/server:2019-latest

ARG PROJECT_DIR=/tmp/devdatabase
RUN mkdir -p $PROJECT_DIR
WORKDIR $PROJECT_DIR
COPY mssql/wait-for-it.sh ./
COPY mssql/entrypoint.sh ./
COPY mssql/setup.sh ./
COPY mssql/create_database.sql ./
COPY db/migrations ./db/migrations
CMD ["/bin/bash", "entrypoint.sh"]