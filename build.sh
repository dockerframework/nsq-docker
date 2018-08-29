#!/bin/bash
#
# Assumes you have the NSQ source code checked out next to this directory
#

cd `dirname $0`

REPO=dockerframework/nsq-docker
VERSION=1.1.0

pushd base
docker build -t $REPO:base-$VERSION .
popd

pushd nsqd
docker build -t $REPO:nsqd-$VERSION .
popd

pushd nsqlookupd
docker build -t $REPO:nsqlookupd-$VERSION .
popd

pushd nsqadmin
docker build -t $REPO:nsqadmin-$VERSION .
popd
