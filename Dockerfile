FROM tomcat:9.0-jdk17-temurin

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR từ thư mục build vào Tomcat
COPY build/EmailList2.war /usr/local/tomcat/webapps/EmailList2.war

ENV JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF-8"

EXPOSE 8080

CMD ["catalina.sh", "run"]