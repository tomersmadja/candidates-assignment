#!/bin/bash

# in route file 208.86.224.90/32 needs to be deleted

ip route del 208.86.224.90/32   dev eth0 src 192.168.100.10