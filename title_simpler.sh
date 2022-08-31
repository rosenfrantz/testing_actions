if grep -m  1 -Rq "title:" "title_contained.md"
    then echo "true"
        else echo "false"
fi