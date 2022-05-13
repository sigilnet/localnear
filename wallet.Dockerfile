FROM kurtosistech/near-wallet:17684565

COPY ./wallet.env.sh /root/env.sh
RUN chmod +x /root/env.sh

RUN /root/env.sh
