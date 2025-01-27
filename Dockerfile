FROM maven:3.6.3-openjdk-14-slim AS build
RUN mkdir -p workspace
COPY pom.xml ./workspace
COPY src ./workspace/src
RUN mvn --file ./workspace/pom.xml clean package

FROM openjdk:14-slim
COPY --from=build ./workspace/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]