#!/bin/bash

# removing www.ascii-art.de from host file so it won't point to the local host

sed -i.bck '/www.ascii-art.de/d' /etc/hosts
