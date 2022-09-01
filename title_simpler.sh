for FILE in * 
do
    if [[ $FILE == *.md && $FILE != README.md ]] # restricts only to markdown files OTHER than README (which does not have YAML) ignoring .sh or any other future commited files
        then 
            if grep -m  1 -Rq "title:" "$FILE"
                 then echo "true"
                    else echo "false"
            fi
    fi
done