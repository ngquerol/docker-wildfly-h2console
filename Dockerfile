FROM jboss/wildfly:10.1.0.Final
MAINTAINER Nicolas G. Querol <nicolas.gquerol@gmail.com>

ARG admin_username=admin
ARG admin_password=admin

RUN $JBOSS_HOME/bin/add-user.sh $admin_username $admin_password

COPY ./h2console.war $JBOSS_HOME/standalone/deployments/

CMD $JBOSS_HOME/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
