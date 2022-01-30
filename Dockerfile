#first time using docker, and creating docker image
FROM openjdk:16

#create a new app directory for helloworld application
RUN mkdir /src/app

# Copy the app files from host machine
COPY out/production/helloworld/com/example/helloworld/ /app

#set the directory for future commands
WORKDIR /app

# run java main class which is Helloworld in this case
CMD java Helloworld