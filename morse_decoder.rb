CODE_MORSE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
  '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
}.freeze

def decode_char(char)
    CODE_MORSE[char]
end

def decode_word(word)
    separate = word.split

  final_word = separate.map { |char| CODE_MORSE[char] }

  final_word.join
end

def decode_phrase(phrase)
  phrase_sep_three = phrase.split('   ')

  final_phrase = phrase_sep_three.map { |word| decode_word(word) }

  final_phrase.join(' ')
end

puts 'Enter a message in Morse code.'
puts 'Do not forget to separate words with three spaces and'
puts 'letters in a word with one space:'

msg = gets.chomp

puts decode_phrase(msg)
