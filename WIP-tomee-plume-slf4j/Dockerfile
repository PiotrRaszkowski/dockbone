FROM praszkowski/tomee-plume
MAINTAINER Piotr Raszkowski, raszkowski.pl
LABEL pl.raszkowski.docker.version="0.1"
LABEL pl.raszkowski.docker.name="praszkowski/tomee-plume-slf4j"
LABEL pl.raszkowski.docker.description="Tomee Plume + SLF4J + LOG4J2"

ENV SLF4J_API_ARCHIVE slf4j-api
ENV SLF4J_API_VERSION 1.7.21
ENV LOG4J_SLF4J_ARCHIVE log4j-slf4j-impl
ENV LOG4J_SLF4J_VERSION 2.7
ENV LOG4J_API_ARCHIVE log4j-api
ENV LOG4J_API_VERSION 2.7
ENV LOG4J_CORE_ARCHIVE log4j-core
ENV LOG4J_CORE_VERSION 2.7

RUN find ${LIB_DIR} -type f -name "slf4j-api-*" -exec rm -f {} \;
RUN curl -o ${LIB_DIR}/${SLF4J_API_ARCHIVE}-${SLF4J_API_VERSION}.jar -L http://central.maven.org/maven2/org/slf4j/slf4j-api/{SLF4J_API_VERSION}/slf4j-api-${SLF4J_API_VERSION}.jar
RUN curl -o ${LIB_DIR}/${LOG4J_SLF4J_ARCHIVE}-${LOG4J_SLF4J_VERSION}.jar -L http://central.maven.org/maven2/org/apache/logging/log4j/log4j-slf4j-impl/${LOG4J_SLF4J_VERSION}/log4j-slf4j-impl-${LOG4J_SLF4J_VERSION}.jar
RUN curl -o ${LIB_DIR}/${LOG4J_API_ARCHIVE}-${LOG4J_API_VERSION}.jar -L http://central.maven.org/maven2/org/apache/logging/log4j/log4j-api/${LOG4J_API_VERSION}/log4j-api-${LOG4J_API_VERSION}.jar
RUN curl -o ${LIB_DIR}/${LOG4J_CORE_ARCHIVE}-${LOG4J_CORE_VERSION}.jar -L http://central.maven.org/maven2/org/apache/logging/log4j/log4j-core/${LOG4J_CORE_VERSION}/log4j-core-${LOG4J_CORE_VERSION}.jar