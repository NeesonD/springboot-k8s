#!/bin/sh

## build 镜像
docker build -t neesond/springboot:v1 .

## 将镜像推送到 dockerhub
docker push neesond/springboot:v1

## 运行
docker run -p 18080:8080 neesond/springboot:v1