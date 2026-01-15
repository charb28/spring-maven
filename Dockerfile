# Utilisez une image de base avec Java
FROM eclipse-temurin:17-jdk

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier jar généré dans le conteneur
COPY target/*.jar app.jar

# Exposer le port 8080
EXPOSE 8080

# Commande pour lancer l'application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
