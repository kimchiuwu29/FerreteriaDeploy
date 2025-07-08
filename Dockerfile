FROM tomcat:9.0-jdk17-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY Ferreteria.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["sh", "-c", "sed -i 's/8080/$PORT/g' /usr/local/tomcat/conf/server.xml && catalina.sh run"]
