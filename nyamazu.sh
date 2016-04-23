#/bin/sh

# Get arguments 
SEARCH_PLACE=$1
SEARCH_WORD=$2

# Display how to use
function usage() {
    NAME=`basename $0`
    echo $NAME search_place search_word
}

# Display usage if argument is wrong
if [ "$SEARCH_WORD" == '' ]; then
    usage
    exit 1
fi

# Execute
find $SEARCH_PLACE -type f -print0 | xargs -0 grep -i -n "$SEARCH_WORD"
