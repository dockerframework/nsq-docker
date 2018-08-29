FROM dockerframework/nsq-docker:base-1.1.0

ADD /nsqlookupd.sh /usr/bin/nsqlookupd.sh

EXPOSE 4160
EXPOSE 4161

ENTRYPOINT ["/usr/bin/nsqlookupd.sh"]
