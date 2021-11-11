#!/bin/bash

if [[ ! -d /opt/test ]]; then mkdir /opt/test; fi

echo $(date) > /opt/test/test.txt

