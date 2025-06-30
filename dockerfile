# Utilise une image de base avec Java 17
FROM openjdk:17-jdk-slim

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier .jar généré par Maven dans le conteneur
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose le port 8080 (utilisé par Spring Boot par défaut)
EXPOSE 8080

# Commande pour exécuter l'application
ENTRYPOINT ["java", "-jar", "/app/docker-demo.jar"]
