# image to create a standalone form builder
# to build, use `docker build -t bonita/form-builder .`
# to run on random port, use `docker run -p 8080 bonita/form-builder`
# to run on a fixed port, 8000 for example, use `docker run -p 8000:8080 bonita/form-builder`
FROM openjdk:8-jre-alpine
EXPOSE 8080
WORKDIR /data
ADD ./backend/webapp/target/ui-designer-1.6.22-standalone.jar /data/ui-designer-standalone.jar
CMD java -jar ui-designer-standalone.jar
