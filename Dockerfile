# 使用官方OpenJDK 8 Alpine镜像作为基础镜像
FROM openjdk:8-jdk-alpine

# 维护者信息
LABEL maintainer="1824464293@qq.com"

# 设置工作目录
WORKDIR /app

# 复制构建好的JAR文件到容器中
# 假设你的jar包在target目录下
COPY target/*.jar app.jar

# 暴露应用运行的端口（请确保与application.yml中的server.port一致，通常网关用8080）
EXPOSE 8080

# 设置JVM运行参数
ENV JAVA_OPTS="-Xms512m -Xmx1024m -Dspring.profiles.active=prod"

# 容器启动时运行应用
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app/app.jar"]