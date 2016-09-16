FROM jboss/wildfly:10.1.0.Final
MAINTAINER Nicolas G. Querol <nicolas.gquerol@gmail.com>

RUN /opt/jboss/wildfly/bin/add-user.sh admin admin

ADD h2console.war /opt/jboss/wildfly/standalone/deployments

CMD /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
