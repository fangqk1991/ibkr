FROM openjdk:23

COPY ./clientportal.gw /data/IBKR/

WORKDIR /data/IBKR/
LABEL commitSHA="${commitSHA}"

CMD ./bin/run.sh root/conf.yaml
