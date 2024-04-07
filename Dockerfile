FROM openjdk:23

COPY ./clientportal.gw /data/IBKR/

WORKDIR /data/IBKR/

CMD ./bin/run.sh root/conf.yaml
