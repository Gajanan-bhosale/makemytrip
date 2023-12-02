FROM tomcat:9.0.52-jrell-openjdk-slim
COPY ./target/makemytrip*.jar /user/local/tomcat/webapps
EXPOSE 8080
USER makemytrip
WORKID /usr/local/tomacat/webapps
CMD ["cataline.sh", "run"]