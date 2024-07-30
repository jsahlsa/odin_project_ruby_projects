dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(str, dict)
    hash = Hash.new(0)
    dict.map do |entry|
        # split str on substring and get the length minus one for number of occurences
        # uncomment the next line to see how this works
        # puts "Substring: #{entry}, result: #{str.split(entry)}"
        count_length = str.split(entry).length - 1
        if (count_length > 0)
            hash[entry] = count_length
        end
    end
    hash
end

puts "Howdy partner, sit down! How's it going?".count("Howdy")

sub_strings("Howdy partner, sit down! How's it going?", dictionary)