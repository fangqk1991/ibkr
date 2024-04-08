FROM openjdk:23

COPY ./clientportal.gw /data/IBKR/

WORKDIR /data/IBKR/

ENV TZ=Asia/Shanghai

ARG commitSHA=Unknown
LABEL commitSHA="${commitSHA}"

CMD ./bin/run.sh root/conf.yaml
