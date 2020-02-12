class PigLatinizer

  def piglatinize(input_str)
    input_str.split(" ").length == 1 ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize(word)
       return word if %w[and an in].include?(word) #one syllable exceptions
       letters = word.split("")
       letters.keep_if {|letter| letter != "."}
       if letters.size > 1
         until vowel?(letters[0])
           letters << letters.shift
         end
         letters  << "ay"
       end
       letters.join
     end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize(word) }
  end

end
