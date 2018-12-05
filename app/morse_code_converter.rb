class MorseCodeConverter

  MORSE_CHARACTER_DELIMITER = ' ' * 3
  MORSE_WORD_DELIMITER = ' ' * 7

  def to_morse(input)
    characters = input.split('')
    converted = ''
    # characters.each do |char|
    #   converted += conv_character(char)
    #   converted += MORSE_CHARACTER_DELIMETER
    # end
    index = 0
    limit = characters.length - 1
    until index > limit
      char = characters[index]
      converted += conv_character(char)
      converted += MORSE_CHARACTER_DELIMITER unless index == limit
      index += 1
    end
    converted
  end

  private

  def conv_character(character)
    case character.downcase
    when 'a'
      '.-'
    when 'b'
      '-...'
    when 'c'
      '-.-.'
    when 'd'
      '-..'
    when 'e'
      '.'
    when 'f'
      '..-.'
    when 'g'
      '--.'
    when 'h'
      '....'
    when 'i'
      '..'
    when 'j'
      '.---'
    when 'k'
      '-.-'
    when 'l'
      '.-..'
    when 'm'
      '--'
    when 'n'
      '-.'
    when 'o'
      '---'
    when 'p'
      '.--.'
    when 'q'
      '--.-'
    when 'r'
      '.-.'
    when 's'
      '...'
    when 't'
      '-'
    when 'u'
      '..-'
    when 'v'
      '...-'
    when 'w'
      '.--'
    when 'x'
      '-..-'
    when 'y'
      '-.--'
    when 'z'
      '--..'
    when '0'
      '-----'
    when '1'
      '.----'
    when '2'
      '..---'
    when '3'
      '...--'
    when '4'
      '....-'
    when '5'
      '.....'
    when '6'
      '-....'
    when '7'
      '--...'
    when '8'
      '---..'
    when '9'
      '----.'
    end
  end
end