FROM openjdk:17
EXPOSE 8070
ADD target/simple.project-0.0.1-SNAPSHOT.jar 
ENTRYPOINT ["java","-jar","/simple.project-0.0.1-SNAPSHOT.jar "]
