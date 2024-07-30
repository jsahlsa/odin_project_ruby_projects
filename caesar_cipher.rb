puts "Enter a string to encode:"
string = gets.chomp
puts "Enter a number to shift by:"
shift = gets.to_i

def convert_char(ascii_char, base, amount)
    alpha_index = ascii_char - base
    new_ascii_w_shift = (alpha_index + amount) % 26
    (new_ascii_w_shift + base).chr
end

def caesar_cipher(str, int)
    str_array = str.split("")
    caesar_array = str_array.map do |char|
        ascii_char = char.ord
        # if lowercase convert it
        if (ascii_char >= 97 && ascii_char <= 122)
            base_lower = 97
            convert_char(ascii_char, base_lower, int)
        # if uppercase convert it
        elsif (ascii_char >= 65 && ascii_char <= 90)
            base_upper = 65
            convert_char(ascii_char, base_upper, int)
        # if its not alpha leave it alone
        else
            char
        end
            
    end
    p caesar_array
end

caesar_cipher(string, shift)

