#!/bin/bash
# java-home.sh
# set JAVA_HOME environment variable in /etc/profile.d/

export JAVA_HOME=/usr/java/default
export JDK_HOME=$JAVA_HOME
export PATH=$PATH:$JDK_HOME/bin

