FROM tomcat
RUN ["rm", "-rf", "/usr/local/tomcat/webapps/ROOT"]
ADD target/greenhouse-1.0.0.BUILD-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

RUN ls /
CMD ["catalina.sh", "run"]
