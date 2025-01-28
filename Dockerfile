FROM openjdk:8-jdk-alpine
LABEL authors="ccguo"
COPY target/*.jar /app.jar
EXPOSE 9082
ENTRYPOINT ["java","-jar","/app.jar"]
ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone