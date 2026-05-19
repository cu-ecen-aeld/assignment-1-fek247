if [ $# -lt 2 ]
then
    echo "Missing argument"
    exit 1
elif [ $# -gt 2 ]
then
    echo "Too many argument"
    exit 1
else
    WRITEFILE=$1
    WRITESTR=$2
fi

if [ -d $WRITEFILE ]
then
    echo "Write file can not be a folder"
    exit 1
fi

mkdir -p "$(dirname "$WRITEFILE")"
echo "$WRITESTR" >> "$WRITEFILE"