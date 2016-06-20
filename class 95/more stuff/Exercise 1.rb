def word (string)
    if string =~ /lab/
        puts string
    else
        puts string.to_s + " doesn't have the charecter 'lab'"
    end
end
word ("laboratory")
word ("experiment")
word("Pans Labyrinth")
word("elaborate")
word("polar bear")
