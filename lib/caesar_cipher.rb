def caesar_cipher(string, num)
  alphabet = ('a'..'z').to_a
  phrase = string.split("")

  until num < 26 do
    num -= 26
  end

  sentence = phrase.map do |n|
    if alphabet.include?("#{n}")
     phrase[phrase.index("#{n}")] = if (alphabet.index("#{n}") + num) > 25 then
       alphabet[alphabet.index("#{n}") + num - 26]
     else
       alphabet[alphabet.index("#{n}") + num]
     end
    elsif alphabet.include?("#{n.downcase}")
       phrase[phrase.index("#{n}")] = alphabet[alphabet.index("#{n.downcase}") + num - 26].upcase
    else
      phrase[phrase.index"#{n}"] = n
    end
  end
  sentence.join
  end

p caesar_cipher('What a string!', 5)
#"Bmfy f xywnsl!"