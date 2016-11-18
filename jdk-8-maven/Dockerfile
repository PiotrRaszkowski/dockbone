FROM centos:7
MAINTAINER Piotr Raszkowski, raszkowski.pl
LABEL pl.raszkowski.docker.version="0.1"
LABEL pl.raszkowski.docker.name="praszkowski/jdk-8-maven"
LABEL pl.raszkowski.docker.description="Basic server with Java 8 and Maven"

RUN yum update -y
RUN yum -y install unzip
RUN yum -y install java-1.8.0-openjdk-devel
RUN yum clean all

ENV LANG en_US.utf8

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0
ENV PATH "$PATH":${JAVA_HOME}/bin:.:

RUN java -version
RUN javac -version

ENV MAVEN_VERSION 3.3.9
ENV MAVEN_ARCHIVE apache-maven-${MAVEN_VERSION}
ENV MAVEN_INSTALL_DIR /usr/share
ENV MAVEN_HOME ${MAVEN_INSTALL_DIR}/${MAVEN_ARCHIVE}

RUN curl -o ${MAVEN_HOME}.zip -L http://ftp.piotrkosoft.net/pub/mirrors/ftp.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.zip
RUN unzip ${MAVEN_HOME}.zip -d ${MAVEN_INSTALL_DIR}

ENV M2_HOME ${MAVEN_HOME}
ENV PATH "$PATH":${M2_HOME}/bin:.:

RUN mvn --version 

RUN locale -a
RUN locale