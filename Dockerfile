FROM openjdk:8
ADD target/test-1.0.0-SNAPSHOT.jar test-1.0.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar"."/test-1.0.0-SNAPSHOT.jar"]
