FROM jboss/wildfly:10.1.0.Final
MAINTAINER Nicolas G. Querol <nicolas.gquerol@gmail.com>

ARG admin_username=admin
ARG admin_password=admin
ARG debug_port=8787

RUN $JBOSS_HOME/bin/add-user.sh $admin_username $admin_password

COPY ./h2console.war $JBOSS_HOME/standalone/deployments/

CMD $JBOSS_HOME/bin/standalone.sh --debug $debug_port -b 0.0.0.0 -bmanagement 0.0.0.0
