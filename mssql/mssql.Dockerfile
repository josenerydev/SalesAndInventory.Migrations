FROM mcr.microsoft.com/mssql/server:2019-latest

ARG PROJECT_DIR=/tmp/devdatabase
RUN mkdir -p $PROJECT_DIR
WORKDIR $PROJECT_DIR
COPY wait-for-it.sh ./
COPY entrypoint.sh ./
COPY setup.sh ./
COPY create_database.sql ./
CMD ["/bin/bash", "entrypoint.sh"]