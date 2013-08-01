# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export JAVA_HOME=/home/yingjun/jdk1.7.0_25
export ZOOKEEPER_HOME=/home/yingjun/zookeeper
export ZEROMQ_HOME=/home/yingjun/zeromq
export JZMQ_HOME=/home/yingjun/jzmq
export STORM_HOME=/home/yingjun/storm
export HADOOP_HOME=/home/yingjun/hadoop
export MAVEN_HOME=/home/yingjun/sharedfile/maven
export PATH=$PATH:$JAVA_HOME/bin:$STORM_HOME/bin:$HADOOP_HOME/bin:$ZOOKEEPER_HOME/bin:$MAVEN_HOME/bin
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$ZEROMQ_HOME/include
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$ZEROMQ_HOME/include
export LIBRARY_PATH=$LIBRARY_PATH:$ZEROMQ_HOME/lib:$JZMQ_HOME/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ZEROMQ_HOME/lib:$JZMQ_HOME/lib
export TERM="xterm-256color"
