FIELDS="title:"
for FILE in * 
do
    if [[ -s $FILE.md && "$FILE" != "README.md" ]]
        then
            for FIELD in $FIELDS
                do
                   grep -m 1 $FIELDS
                    if 
                done
    fi
done

# this file does not currently work as it stands, and for the time being, I'm going to move toward trying something much simpler (even though this was already what I thought was a "simple attempt"), then slowly escalating complexity