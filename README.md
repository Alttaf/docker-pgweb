# docker-pgweb
Simple Dockerfile for pgweb - web UI for postgres database

# Environment variables

The postgres connection can be configured via the UI once it's started. You can also change the connection values when starting the container via the following environment variables:

* POSTGRES=postgres
* PORT=5432
* USER=postgres
* POSTGRES_PASSWORD=postgres
* POSTGRES_DB=postgres
* SSL=disable

Here is an example docker command:

    docker run --rm -it -P -e POSTGRES=yourdbhost -e POSTGRES_PASSWORD=yourdbpassword -e POSTGRES_DB=yourdbname  moritanosuke/docker-pgweb

The UI is available at http://localhost:8081/.
