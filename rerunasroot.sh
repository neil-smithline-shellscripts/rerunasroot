#!/bin/sh

# Make sure we are running as root
if [ "$USER" != "root" ]; then
    # Arguments are separated by NULL characters so we
    # must change them to spaces to make things work.
    exec sudo $SHELL -c "`cat /proc/$$/cmdline| tr '\000' ' '`" root
    # Exec should never return
    echo "$0: exec failed with error code$?!" 1>&2
    exit -1
fi

# Everything from here on will be run as root
