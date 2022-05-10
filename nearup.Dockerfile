FROM nearprotocol/nearup:1.5.0

RUN apt update
RUN apt install curl -y

COPY ./nearup.start.sh /root/start.sh
RUN chmod +x /root/start.sh
