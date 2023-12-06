FROM tomcat:9.0.52-jre11-openjdk-slim
COPY ./target/makemytrip*.jar /usr/local/tomcat/webapps
EXPOSE 8080
USER makemytrip
WORKDIR /usr/local/tomcat/webapps
CMD ["cataline.sh", "run"]