# syntax=docker/dockerfile:1
FROM arm64v8/ubuntu
RUN apt-get update
RUN apt-get install -y python3 python3-pip curl
RUN curl https://downloads.mariadb.com/MariaDB/mariadb_repo_setup > mariadb_repo_setup
RUN chmod +x mariadb_repo_setup
RUN ./mariadb_repo_setup --mariadb-server-version="mariadb-10.6"
RUN apt install -y libmariadb3 libmariadb-dev