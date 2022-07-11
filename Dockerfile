FROM openjdk:16-alpine3.13
LABEL myapp.img.authors="Ganesh K"
WORKDIR /app
COPY pom.xml ./pom.xml
COPY src ./src
RUN apk add maven \
  && mvn clean install
RUN ls -l && cd target && ls
#ADD /target/helloproject-0.0.1-SNAPSHOT.jar ./target/helloproject-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java", "jar", "/target/helloproject-0.0.1-SNAPSHOT.jar"]
