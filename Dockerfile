FROM openjdk:8-alpine

## 维护人信息
MAINTAINER neeson

ENV TZ=Asia/Shanghai
ENV JAR_FILE=springboot-k8s-0.0.1-SNAPSHOT.jar
ENV BASE_WORKDIR=/home/java-app/lib
ENV RUNNING_JAR=$BASE_WORKDIR/app.jar

## 设置时区
#RUN apk add -U tzdata; \
#    /bin/cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ >/etc/timezone

# 导入JAR
COPY  ${JAR_FILE} $RUNNING_JAR

WORKDIR $BASE_WORKDIR

ENTRYPOINT ["java","-jar","app.jar"]



