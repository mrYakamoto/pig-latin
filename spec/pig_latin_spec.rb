require_relative('../pig_latin')

describe 'Converting single words to Pig Latin' do

  it 'does nothing if first character is a vowel' do
    expect(convert_word_to_pig_latin("alpha")).to eq("alpha")
  end
  it 'converts word to pig latin if it begins with a consonant' do
    expect(convert_word_to_pig_latin("stack")).to eq("ackstay")
    expect(convert_word_to_pig_latin("schlock")).to eq("ockschlay")
    expect(convert_word_to_pig_latin("devboot")).to eq("evbootday")
  end
end
#
describe 'Converting a sentence to Pig Latin' do
  it 'converts sentence to pig latin only for words starting consonant' do
    expect(convert_sentence_to_pig_latin("today is sunny")).to eq("odaytay is unnysay")
  end
end
