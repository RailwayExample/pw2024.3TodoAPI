# Dockerfile for Spring Boot with Java 21 and Maven
FROM maven:3.9.5-eclipse-temurin-21 AS builder
WORKDIR /app

# Copia o arquivo pom.xml e faz download das dependências
COPY pom.xml ./
RUN mvn dependency:go-offline

# Copia todo o código-fonte do projeto e compila
COPY . .
RUN mvn package -DskipTests

# Imagem final para execução
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

