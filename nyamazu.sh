#/bin/sh

# Get arguments 
SEARCH_WORD=$1
SEARCH_PLACE=$2

# Display how to use
function usage() {
    NAME=`basename $0`
    echo $NAME SEARCH_WORD SEARCH_PLACE
}

# Display usage if argument is wrong
if [ "$SEARCH_WORD" == '' ]; then
    usage
    exit 1
fi

if [ "$SEARCH_PLACE" == '' ]; then
    SEARCH_PLACE=.
fi


# Execute
find $SEARCH_PLACE -type f -print0 | xargs -0 grep -i -n "$SEARCH_WORD"
