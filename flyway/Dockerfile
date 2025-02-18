FROM flyway/flyway:11.3.1

ARG DB_URL
ARG DB_USER
ARG DB_PASSWORD

VOLUME ["/flyway-mount"]
WORKDIR /flyway-mount
COPY migrations .

CMD ["-workingDirectory=/flyway-mount", "-configFiles=flyway.conf", "migrate"]