FROM openjdk:23

COPY ./clientportal.gw /data/IBKR/

WORKDIR /data/IBKR/

ARG commitSHA=Unknown
LABEL commitSHA="${commitSHA}"

CMD ./bin/run.sh root/conf.yaml
