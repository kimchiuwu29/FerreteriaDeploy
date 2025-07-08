FROM tomcat:10.1-jdk21-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY Ferreteria.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["sh", "-c", "sed -i 's/port=\"8080\"/port=\"'$PORT'\"/g' /usr/local/tomcat/conf/server.xml && catalina.sh run"]
