FROM dockerframework/nsq-docker:base-1.1.0

ADD /nsqd.sh /usr/bin/nsqd.sh

VOLUME ["/data"]
EXPOSE 4150
EXPOSE 4151

ENTRYPOINT ["/usr/bin/nsqd.sh", "--data-path=/data"]
