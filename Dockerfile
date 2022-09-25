FROM openjdk:8-alpine

WORKDIR ry

ADD ./ruoyi-admin/target/ruoyi-admin.jar ruoyi-admin.jar

RUN bash -c 'touch /ruoyi-admin.jar'

ENTRYPOINT ["java", "-jar", "/ruoyi-admin.jar"]


