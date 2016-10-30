#!/bin/bash
# description: this is my service test
while true
          do
          echo $(date) >> /tmp/p1/myservice.log
          sleep 20
done
