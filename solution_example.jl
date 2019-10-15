function abbreviate(text)
    text_cleaned = replace(text, "'" => "")
    for char in text_cleaned
        if !isletter(char)  &&  !isnumeric(char)
            text_cleaned = replace(text_cleaned, char => " ")
        end
    end
    words = split(text_cleaned)


    res = "" # result
    for word in words;    res *= uppercase(first(word));    end


    res # returned
end
