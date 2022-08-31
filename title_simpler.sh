for FILE in * 
do
    if [[ -s "$FILE.md" ]]
        then 
            if grep -m  1 -Rq "title:" "title_contained.md"
                 then echo "true"
                    else echo "false"
            fi
    fi
done