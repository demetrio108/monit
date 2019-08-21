#!/bin/sh

sed -i "s/%USERNAME%/$USERNAME/; s/%PASSWORD%/$PASSWORD/" /monitrc && \
  exec monit -I -c /monitrc
