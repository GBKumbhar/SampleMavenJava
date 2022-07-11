FROM openjdk:16-alpine3.13
MAINTAINER Ganesh K
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
copy src ./src
CMD ["./mvnw", "mvn clean install"]
# ENTRYPOINT ["java", "jar", "/target/helloproject-0.0.1-SNAPSHOT.jar"]
