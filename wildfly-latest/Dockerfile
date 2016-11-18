FROM jboss/wildfly:latest
MAINTAINER Piotr Raszkowski, raszkowski.pl
LABEL pl.raszkowski.docker.version="0.1"
LABEL pl.raszkowski.docker.name="praszkowski/wildfly"
LABEL pl.raszkowski.docker.description="Basic Wildfly image"

USER jboss

ENV ADMIN_USER_NAME admin
ENV ADMIN_USER_PASSWORD 1234

RUN /opt/jboss/wildfly/bin/add-user.sh ${ADMIN_USER_NAME} ${ADMIN_USER_PASSWORD} --silent

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

EXPOSE 8080 9990
