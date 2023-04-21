FROM openjdk:17
EXPOSE 8070
ADD target/simple.project-0.0.1-SNAPSHOT.jar snapshot.jar
ENTRYPOINT ["java","-jar","snapshot.jar "]
