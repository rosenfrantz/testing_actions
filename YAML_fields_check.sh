FIELDS=("title:" "email:") #declaring the fields I want it to look for 

for FILE in * 
do
    if [[ $FILE == *.md && $FILE != README.md ]] # restricts only to markdown files OTHER than README
        then
            for FIELD in ${FIELDS[*]}
                do 
                    if grep -m  1 -Rq "$FIELD" "$FILE" 
                        then : 
                            else issues+=$"$FILE does not have the $FIELD field.\n"
                    fi
                done
    fi
done

if [[ -z ${issues} ]] # for end user clarity on what needs to be fixed
    then echo "All checks passed: there were no issues identified with the YAML front matter."
    true
        else echo -e $issues
        false 
fi