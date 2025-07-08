# Gunakan base image Java 17
FROM openjdk:17-jdk-slim

# Direktori kerja di dalam container
WORKDIR /app

# Salin file jar ke dalam container
COPY target/bumdesaapp-0.0.1-SNAPSHOT.jar app.jar

# Jalankan aplikasi Spring Boot
ENTRYPOINT ["java", "-jar", "app.jar"]
