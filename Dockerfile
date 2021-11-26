FROM openjdk:8
EXPOSE 8080
ARG JAR_FILE
#注意，后面两个参数中间有个空格，表示把宿主机环境的文件复制到容器的目录中
ADD target/${JAR_FILE} /app.jar
ENTRYPOINT ["java", "-jar","/app.jar"]