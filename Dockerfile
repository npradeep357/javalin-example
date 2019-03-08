FROM openjdk:11.0-jre-slim

ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/javalin/javalin-shaded.jar

EXPOSE 8080
ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/javalin/javalin-shaded.jar"]