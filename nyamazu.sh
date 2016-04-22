#/bin/sh

# define commands
FIND='/usr/bin/find'
XARGS='/usr/bin/xargs'

## Mac OS X / Linux(Ubuntu) 
if [ -f /bin/grep ]; then
    GREP='/bin/grep'
elif [ -f /usr/bin/grep ]; then
    GREP='/usr/bin/grep'
fi

if [ -f /bin/basename ]; then
    BASENAME='/bin/basename'
elif [ -f /usr/bin/basename ]; then
    BASENAME='/usr/bin/basename'
fi

# Get arguments 
PLACE=$1
TARGET=$2

# Display how to use
function usage() {
    NAME=`$BASENAME $0`
    echo $NAME search_place search_word
}

# How to use if no argument
if [ "$TARGET" == '' ]; then
    usage
    exit 1
fi
# Execute

$FIND $PLACE -type f -print0 | $XARGS -0 $GREP -i -n "$TARGET"
