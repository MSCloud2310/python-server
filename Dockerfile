FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3
COPY start.sh /start.sh
ENV SERVER_PORT=8080
EXPOSE $SERVER_PORT/tcp
WORKDIR /html

VOLUME [ "/html" ] 

# -----------------------
# start.sh se usa para poder incorporar variables de ambiente en CMD
ENTRYPOINT [ "/start.sh", "python3", "-m", "http.server"  ]
CMD ["${SERVER_PORT}"]

