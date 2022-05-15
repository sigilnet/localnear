FROM nearprotocol/nearup:1.5.0
ARG VERSION

RUN apt update
RUN apt install unzip curl -y

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

RUN aws --no-sign-request s3 cp s3://build.nearprotocol.com/nearcore/Linux/$VERSION/neard /root/bin/neard
RUN chmod +x /root/bin/neard

COPY ./start.sh /root/start.sh
RUN chmod +x /root/start.sh
