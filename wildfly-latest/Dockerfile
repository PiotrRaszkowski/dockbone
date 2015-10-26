FROM jboss/wildfly:latest
MAINTAINER Piotr Raszkowski, raszkowski.pl
USER jboss
RUN /opt/jboss/wildfly/bin/add-user.sh admin 1234 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
EXPOSE 8080 9990
ADD ./ping.war ping.war
RUN cp ping.war /opt/jboss/wildfly/standalone/deployments/
