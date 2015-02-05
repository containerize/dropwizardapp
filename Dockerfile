FROM dockerfile/java:openjdk-7-jdk

ADD dropwizard-example-1.0.0.jar /data/dropwizard-example-1.0.0.jar

ADD example.keystore /data/example.keystore

ADD example.yml /data/example.yml

RUN java -jar dropwizard-example-1.0.0.jar db migrate /data/example.yml

CMD java -jar dropwizard-example-1.0.0.jar server /data/example.yml

EXPOSE 8080
