FROM jboss/wildfly:8.2.1.Final
MAINTAINER Nicolas G. Querol <nicolas.gquerol@gmail.com>

ARG admin_username=admin
ARG admin_password=admin

RUN /opt/jboss/wildfly/bin/add-user.sh $admin_username $admin_password --silent

ADD h2console.war /opt/jboss/wildfly/standalone/deployments

CMD /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
