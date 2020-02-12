class PigLatinizer < Sinatra::Base

  def piglatinize(word)
    non_piglatin_words = ['i','me', 'to', 'too', 'a', 'an', 'in', 'and', 'on']
    vowels = ['a', 'e', 'i', 'o', 'u']

    if non_piglatin_words.include(word)
      word
    elsif vowels.include? word[0]
      word << 'ay'
    else
      consonants = ''
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split('')[1..-1].join
      end
      word + consonants + 'ay'
    end

  end

end
