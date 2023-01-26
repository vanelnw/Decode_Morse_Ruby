MORSECODE = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}.freeze

def decode_char(char)
  MORSECODE[char].upcase
end

def decode_word(word)
  word_array = word.split
  return_word = ''
  (0...word_array.length).each do |i|
    return_word += decode_char(word_array[i])
  end
  return_word
end

def decode(phrase)
  phrase_array = phrase.split('   ')
  phrase_array.map { |w| decode_word(w) }.join(' ')
end

puts decode('-- -.--   -. .- -- .')

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
