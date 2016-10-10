# JHU 605.788 Class Machine

JHU 605.788 Big Data Processing with Hadoop: Vagrant project for standing up
hadoop in pseudo-distributed mode for development. Developed and tested on macOS
Sierra. Configured using instructions from Fall 2015 class slides.


## Features

* CentOS 6.7
* Installs necessary packages and configuration according to class slides
* X11 forwarding for launching gui programs like Firefox from the guest


## Setting-Up the Box

1. Install Vagrant
2. Install Ansible
3. Install VirtualBox
4. Optionally download the Oracle JDK RPM and set the `jdk_rpm` variable. If
  `jdk_rpm` is not set, ansible will install java-1.8.0-openjdk. This step cannot
   be automated because Oracle requires users to agree to their terms before
   downloading the artifact
5. Run `vagrant up`


## Working with the Box

Run `vagrant ssh` to log into the box with the default class user `vagrant`.
Most files you will need are in this user's home directory


### VBox Shares

Share the project directory with the machine using VirtualBox shares. The
Vagrant script attaches this directory's parent to `/project` on the guest file
system. This set-up let's you edit code on the host, then log into the guest to
build, debug, and test.

    605.788 (this directory is synced with the guest)
    |
    +-- jhuep-hadoop-box (this vagrant project)
    |
    `-- assignments (code for class assignments)
