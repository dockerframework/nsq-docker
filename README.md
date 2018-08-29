nsq-docker
==========

Provides automated builds for NSQ using binaries directly from github.


Usage
=====

Start up a single host NSQ cluster only accessible from the docker host:

    docker run -d --name nsqlookupd dockerframework/nsq-docker:nsqlookupd-1.1.0 -broadcast-address '$HOSTNAME'
    docker run -d --name nsqd --link nsqlookupd:nsqlookupd dockerframework/nsq-docker:nsqd-1.1.0 -broadcast-address '$HOSTNAME'
    docker run -d --name nsqadmin --link nsqlookupd:nsqlookupd dockerframework/nsq-docker:nsqadmin-1.1.0

Note that in this configuration, this cluster cannot be talked to from the
outside world. If you want to do that, then you need to use -p to publsh all
the ports, and set the broadcast address to the docker host address.

