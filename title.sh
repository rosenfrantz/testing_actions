FIELDS="title: email:" #declaring the fields I want it to look for 
for FILE in * 
do
    if [[ $FILE == *.md && $FILE != README.md ]] # restricts only to markdown files OTHER than README (which does not have YAML) ignoring .sh or any other future commited files
        then
            for FIELD in $FIELDS 
                do 
                    if grep -m  1 -Rq "$FIELD" "$FILE" # find instance of the given field in the file -- returns the line if found, returns nothing if not
                        then echo "true" # if something returned (ie, field found) echo true
                            else echo "false"
                    fi
                done
    fi
done