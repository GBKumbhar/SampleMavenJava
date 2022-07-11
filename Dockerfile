FROM openjdk:16-alpine3.13
MAINTAINER Ganesh K
WORKDIR /app
COPY pom.xml ./pom.xml
copy src ./src
RUN apk add maven \
  && mvn clean install
run ls -l && cd target && ls
copy /target/helloproject-0.0.1-SNAPSHOT.jar ./target/helloproject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "jar", "/target/helloproject-0.0.1-SNAPSHOT.jar"]
