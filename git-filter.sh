if [ "$1" = "clean" ]; then
    sed -E 's/(api[_-]?key|password|secret)[[:space:]]*=[[:space:]]*"[^"]*"/\1 = "*****"/gi'
elif [ "$1" = "smudge" ]; then
    cat
else
    echo "Usage: $0 [clean|smudge]" >&2
    exit 1
fi