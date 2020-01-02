#!/bin/bash

start_configuration() {
    # wait for the bridge interface br0 to come up
    found=1
    while [ $found -eq 1 ]; do
        found=$(ip link list | grep -q " br0:" ; echo $?)
        if [ $found -eq 1 ]; then
            echo "Bridge interface not found. Waiting"
            sleep 1
        fi
    done
    ip link add veth1s type veth peer name veth1
    ip link set veth1s up
    ip link set veth1s master br0
    ip link set veth1 up
    # TODO Network setup HERE
}

teardown_configuration() {
    ip link set veth1 down
    ip link set veth1s nomaster
    ip link set veth1s down
    ip link del veth1s
}

case $1 in
    start)
        start_configuration
        ;;
    stop)
        teardown_configuration
        ;;
esac
