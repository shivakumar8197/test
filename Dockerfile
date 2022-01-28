FROM openjdk:8
ADD target/test-1.0.0.jar test-1.0.0.jar
ENTRYPOINT ["java","-jar"."/test-1.0.0-SNAPSHOT.jar"]
