FROM kurtosistech/near-contract-helper:b6a8d0f

COPY ./contract-helper.start.sh /root/start.sh

CMD ["sh", "-c",  "/root/start.sh"]
