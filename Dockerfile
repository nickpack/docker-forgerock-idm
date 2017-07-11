FROM java:8

WORKDIR /opt

EXPOSE 8080 8443
COPY idm.zip /var/tmp/

RUN unzip /var/tmp/idm.zip -d /opt/ && rm -fr /var/tmp/idm.zip

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

CMD ["/opt/openidm/startup.sh"]
