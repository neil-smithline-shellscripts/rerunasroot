#!/bin/sh

echo '-------------------------------------'
echo "`basename $0`: Running as $USER."
echo '-------------------------------------'
echo ''

# Just add the next line of code to the beginning of 
# your shell script to make sure it is running as root.
# You should change the path as appropriate or remove the
# path if rerunasroot.sh is in your PATH.
. `dirname $0`/rerunasroot.sh

# Everything from here on will be run as root so program carefully.

# Being this is a test program, we probably should report an error
if [ "$USER" != "root" ]; then
    echo "$0: After rerunasroot.sh current user is $USER\?\?" 1>&2
    exit -1
fi

echo '-------------------------------------'
echo "Yeah! I'm now running as $USER!"
echo '-------------------------------------'
