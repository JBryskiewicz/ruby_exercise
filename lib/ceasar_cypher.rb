def caesar_cipher(string, shift)
    result = ''
  
    string.each_char do |char|
      if char.match(/[A-Z]/)
        result += ((char.ord - 65 + shift) % 26 + 65).chr
      elsif char.match(/[a-z]/)
        result += ((char.ord - 97 + shift) % 26 + 97).chr
      else
        result += char
      end
    end
    return result
  end
  
    puts caesar_cipher("What a string!", 5)