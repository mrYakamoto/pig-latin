def convert_word_to_pig_latin(word)
  char_arr = word.split('')
  if char_arr[0].match(/[aeiou]/)
    char_arr.join('')
  else
    first_vowel = char_arr.find{|char| char.match(/[aeiou]/)}
    index = char_arr.index(first_vowel)
    index.times {
      char_arr.push(char_arr.shift())
    }
    char_arr.join('').concat('ay')
  end
end


def convert_sentence_to_pig_latin(sentence)
  word_array = sentence.split(' ')
  word_array.map! { |word|
    word = word.split('')
    if word[0].match(/[aeiou]/)
      word.join('')
    else
      first_vowel = word.find{|char| char.match(/[aeiou]/)}
      index = word.index(first_vowel)
      index.times {
        word.push(word.shift())
      }
      word.join('').concat('ay')
    end
  }
  word_array.join(' ')
end

p convert_word_to_pig_latin('devuboot')
p convert_sentence_to_pig_latin("today is sunny")
