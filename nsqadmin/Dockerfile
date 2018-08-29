FROM dockerframework/nsq-docker:base-1.1.0

ADD /nsqadmin.sh /usr/bin/nsqadmin.sh

EXPOSE 4171

ENTRYPOINT ["/usr/bin/nsqadmin.sh"]
