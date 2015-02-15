# JHU 605.788 Class Machine

JHU 605.788 Big Data Processing with Hadoop: Vagrant project for standing up
hadoop in pseudo-distributed mode for development. Developed and tested on Mac
OSX Mavericks

## Features

* Installs necessary packages and configuration according to class slides
* Loads class NASDAQ data set, class examples data set, and checks-out class
  examples from SVN
* sets class `PLAY_AREA` environment variable
* SSH agent forwarding helps when using Git on the development machine without
  transfering keys to insecure dev machine
* Installs Eclipse and Idea
* X11 forwarding for launching Firefox, IntelliJ, Eclipse from the machine

## Setting-Up the Box

1. Install Vagrant
2. Install Ansible
3. Install VirtualBox
4. Download the Oracle JDK RPM and copy it to the `files` directory. Change (or
   override) the `jdk_rpm` ansible variable to match the name of the RPM in
   `files`. This step cannot be automated because Oracle requires users to agree
   to their terms before downloading the artifact
5. Run `vagrant up`

## Working with the Box

Run `vagrant ssh` to log into the box with the default class user `vagrant`.
Most files you will need are in this user's home directory

* class examples are in `$HOME/HadoopSamples`
* idea is in `$HOME/devtools/idea`
* eclipse is in `$HOME/devtools/eclipse`

Before launching idea and eclipse while connected to the box using SSH, make
sure the host machine has an X11 server running.

The project installs the ultimate verison of Idea because this is a university
course and the ultimate version is available to university students and
professors with a free academic license https://www.jetbrains.com/student/

