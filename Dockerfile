FROM maven:latest
LABEL authors="yasminbelhout"
WORKDIR /app

COPY pom.xml /app/

COPY . /app/

RUN mvn package

cmd ["java", "-jar", "target/test.jar"]


