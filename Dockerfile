# 1. Java 11 + Tomcat 9 베이스 이미지 사용
FROM tomcat:9.0-jdk11-temurin

# 2. 기존 webapps 제거
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. WAR 복사
COPY *.war /usr/local/tomcat/webapps/ROOT.war

# 4. 포트 노출
EXPOSE 8080

# 5. 톰캣 실행
CMD ["catalina.sh", "run"]


# 스프링 부트 기반 jar...
# FROM openjdk:11-jre-slim
#   ARG JAR_FILE=target/*.jar
#   CopY ${JAR_FILE} app.jar
#   ENTRYPOINT ["java","-jar","/app.jar"]
