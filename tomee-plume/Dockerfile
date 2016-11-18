FROM praszkowski/jdk-8-maven
MAINTAINER Piotr Raszkowski, raszkowski.pl
LABEL pl.raszkowski.docker.version="0.1"
LABEL pl.raszkowski.docker.name="praszkowski/tomee-plume"
LABEL pl.raszkowski.docker.description="Basic Tomee Plume image"

ENV TOMEE_VERSION 7.0.2
ENV ARCHIVE apache-tomee-plume-${TOMEE_VERSION}
ENV INSTALL_DIR /opt
ENV SERVER_HOME ${INSTALL_DIR}/${ARCHIVE}

RUN curl -o ${SERVER_HOME}.zip -L http://mirrors.ocf.berkeley.edu/apache/tomee/tomee-${TOMEE_VERSION}/apache-tomee-${TOMEE_VERSION}-plume.zip
RUN unzip ${SERVER_HOME}.zip -d ${INSTALL_DIR}

ENV DEPLOYMENT_DIR ${SERVER_HOME}/webapps/
ENV LIB_DIR ${SERVER_HOME}/lib/

ENTRYPOINT ${SERVER_HOME}/bin/catalina.sh run

EXPOSE 8080
