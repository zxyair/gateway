# 使用官方OpenJDK 8基础镜像
FROM openjdk:8-jdk-alpine

# 设置工作目录
VOLUME /tmp

# 复制打包好的jar文件
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# 指定容器启动命令
ENTRYPOINT ["java","-jar","/app.jar"]
