def chiffre_de_cesar(string,shift)
    shift.to_i
    ascii = string.chars.map(&:ord) #tableau qui stock les lettres en Ascii

    shifted = ascii.map do |letter| 
        letter.to_i + shift.to_i < 123 ? 
        shift.to_i + letter.to_i : 
        shift.to_i + letter.to_i - 26
    end
    decalage = shifted.map { |a| a.chr }.join
    puts decalage
end

puts "give me un mot"
string = gets.chomp

puts "give me a number entre 0 et 26"
shift = gets.chomp

chiffre_de_cesar(string,shift)