FROM alpine:latest

RUN apk --no-cache add wget	

WORKDIR /app

COPY download-data.sh delete-old-data.sh ./

RUN chmod +x download-data.sh delete-old-data.sh

CMD ["/bin/sh", "-c", "./download-data.sh && ./delete-old-data.sh"]

