def translate(word)
  def contains_vowel(str)
    return str =~ /[aeiou]/
  end

  "word.split.length #{word.split.length} #{word.split}"

  case word.split.length > 0
    when word.split.length == 1 && contains_vowel(word[0]) == 0
    word + "ay"
    when word.split.length == 1 && contains_vowel(word[0]) != 0 && contains_vowel(word[1]) == 0
      word.reverse + "ay"
    when word.split.length == 1 && contains_vowel(word[0]) != 0 && contains_vowel(word[1]) != 0  && contains_vowel(word[2]) == 0
      l = word.length - 1
      word[2..l] + word[0] + word[1] + "ay"
    when word.split.length == 1 && contains_vowel(word[0]) != 0 && contains_vowel(word[1]) != 0 && contains_vowel(word[2]) != 0
      l = word.length - 1
      word[3..l] + word[0..2] + "ay"
    when word.split.length == 2
      puts "word2 #{word.split(" ")[0] + "ay" + word.split(" ")[1].reverse + "ay"}"
      "#{word.split(" ")[0]}ay #{word.split(" ")[1][1]}#{word.split(" ")[1][2]}#{word.split(" ")[1][0]}ay"
  end

  # case word.split(" ").length == 2
  #   when true
  #   puts "word.split #{word.split(" ")}"
  #   "#{word.split[0] + "ay"} #{word.split[1].reverse + "ay"}"
  #   when false 
  #     puts "false false false"
  # end
end 