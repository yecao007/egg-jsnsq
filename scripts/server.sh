#!/bin/bash

curl https://s3.amazonaws.com/bitly-downloads/nsq/nsq-1.2.0.linux-amd64.go1.12.9.tar.gz

tar -zxvf nsq-1.2.0.linux-amd64.go1.12.9.tar.gz

cd nsq-1.2.0.linux-amd64.go1.12.9/bin

./nsqlookupd &
./nsqd -lookupd-tcp-address=127.0.0.1:4160 -broadcast-address=127.0.0.1 &