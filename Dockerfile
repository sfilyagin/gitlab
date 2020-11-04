#FROM openjdk:8-jdk-alpine

#ARG JAR_FILE

#RUN mkdir -p /apps
#COPY ./target/${JAR_FILE} /apps/app.jar

#COPY ./entrypoint.sh /apps/entrypoint.sh
#RUN chmod +x /apps/entrypoint.sh
#CMD ["/apps/entrypoint.sh"]


FROM maven:3.5.2-jdk-8-alpine
COPY /target/simpleapi-1.0.jar myapi.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/myapi.jar"]


#FROM java:8-jdk-alpine
#COPY ./target/simpleapi-1.0.jar /usr/app/
#WORKDIR /usr/app
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar", "simpleapi-1.0.jar"]
