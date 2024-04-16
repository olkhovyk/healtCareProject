FROM openjdk:17-oracle AS RUN

COPY build/libs/*.jar /app/build/healthcare.jar

WORKDIR /app/build

ENTRYPOINT ["java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005", "-jar", "healthcare.jar"]