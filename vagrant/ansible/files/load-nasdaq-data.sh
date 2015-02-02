#!/bin/bash
# load-nasdaq-data.sh
#
# downloads NASDAQ dividend data for class project and loads it into HDFS

# download file
wget -O /tmp/nasdaq-dividends.tar.gz http://goo.gl/yWp3b3
# unzip to local file system
tar xzfv /tmp/nasdaq-dividends.tar.gz -C /tmp/
# create dir in HDFS
hdfs dfs -mkdir -p /data/nasdaq/dividends
# upload NASDAQ Dividend CSV to HDFS
find /tmp/NASDAQ_dividends/ -name *.csv -exec hdfs dfs -put {} /data/nasdaq/dividends/ \;

