#!/bin/bash
# load-class-examples-data.sh
#
# downloads data for class examples and loads it into HDFS

# download file
wget -O /tmp/class-sample-data.zip "http://goo.gl/1l3Xrw"
# unzip to local file system
unzip /tmp/class-sample-data.zip -d /tmp/
# upload to HDFS
hdfs dfs -put /tmp/examples_input /

