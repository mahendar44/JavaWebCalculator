FROM maven
WORKDIR /app
COPY . .
RUN mvn package

FROM tomcat:8.0
COPY build_from_mavn /target/.war /user/local/tomcat/webapps
