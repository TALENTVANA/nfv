FROM java:8
VOLUME /tmp
ADD nfv-0.1.0.jar app.jar
ADD VERSION .
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]
