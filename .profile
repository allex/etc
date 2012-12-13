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

# Set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Set profile LIB
if [ -d "$HOME/.lib" ] ; then
    export LIB="$HOME/.lib"
fi

# JDK
export JAVA_HOME="/usr/lib/jvm/java-1.7.0-openjdk-i386"

# Ant
export ANT_HOME="/usr/share/ant-1.8.2"
export PATH=$PATH:$ANT_HOME/bin

# Nodejs
export NODE_PATH="/usr/local/lib/node"
export NODE_PATH=$HOME/.node_libraries:$HOME/node_modules:$NODE_PATH

# Python packages
export PYTHONPATH=$HOME/local/python-packages

# Includes python packages commond
if [ -d "$PYTHONPATH" ] ; then
    export PATH="$PATH:$PYTHONPATH"
fi

