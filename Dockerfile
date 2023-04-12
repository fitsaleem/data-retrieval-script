#  the base image to use for the Docker container
FROM alpine:latest

# installs the wget package in the Docker container using the Alpine package manager apk.
RUN apk --no-cache add wget	

# sets the working directory
WORKDIR /app

# compies the shell scripts file form local machine
COPY download-data.sh delete-old-data.sh ./

# give the executable permission 
RUN chmod +x download-data.sh delete-old-data.sh

# command to be run when the container starts
CMD ["/bin/sh", "-c", "./download-data.sh && ./delete-old-data.sh"]

