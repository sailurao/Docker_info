From mysql:latest
#add databse test
ENV MYSQL_DATABASE test
#copy the scripts to docker-entrypoint-initdb.d which will be automatically executed during container startup
COPY ./scripts/ docker-entrypoint-initdb.d/
