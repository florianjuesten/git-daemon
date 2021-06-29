FROM raspbian/jessie

ENV VERSION 1.0

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

ADD git-daemon.sh /usr/local/bin/git-daemon.sh
VOLUME /git

EXPOSE 9418

CMD /usr/local/bin/git-daemon.sh

