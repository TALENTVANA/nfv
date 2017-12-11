FROM java:8
VOLUME /tmp
ADD nfv-demo-0.1.0.war app.war
RUN bash -c 'touch /app.war'
ENTRYPOINT ["java","-jar","/app.war"]
