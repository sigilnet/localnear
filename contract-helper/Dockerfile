FROM nguquen/near-contract-helper:latest

COPY ./start.sh /root/start.sh

RUN yarn add supervisor

CMD ["sh", "-c",  "/root/start.sh"]
