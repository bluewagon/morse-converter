require_relative 'morse'

class MorseCodeConverter

  def to_morse(input)
    characters = input.split('')
    converted = ''
    index = 0
    limit = characters.length - 1
    until index > limit
      char = characters[index]
      converted += conv_character(char)
      unless index == limit || char == ' ' || characters[index + 1] == ' '
        converted += Morse::MORSE_CHARACTER_DELIMITER
      end
      index += 1
    end
    converted
  end

  def to_characters(input)

    # '.-'
    # words = ['.-']
    #
    words = input.split(Morse::MORSE_WORD_DELIMITER)
    index = 0
    converted = ''
    limit = words.length - 1
    until index > limit
      morse_word = words[index]
      converted += conv_word(morse_word)
      unless index == limit
        converted += ' '
      end
      index += 1
    end
    converted
  end

private

  def conv_word(word)
    characters = word.split(Morse::MORSE_CHARACTER_DELIMITER)
    converted = ''
    index = 0
    limit = characters.length - 1
    until index > limit
      morse = characters[index]
      converted += conv_morse(morse)
      index += 1
    end
    converted
  end

  def conv_morse(characters)
    case characters
    when Morse.a
      'a'
    when Morse.b
      'b'
    when Morse.c
      'c'
    when Morse.d
      'd'
    when Morse.e
      'e'
    when Morse.f
      'f'
    when Morse.g
      'g'
    when Morse.h
      'h'
    when Morse.i
      'i'
    when Morse.j
      'j'
    when Morse.k
      'k'
    when Morse.l
      'l'
    when Morse.m
      'm'
    when Morse.n
      'n'
    when Morse.o
      'o'
    when Morse.p
      'p'
    when Morse.q
      'q'
    when Morse.r
      'r'
    when Morse.s
      's'
    when Morse.t
      't'
    when Morse.u
      'u'
    when Morse.v
      'v'
    when Morse.w
      'w'
    when Morse.x
      'x'
    when Morse.y
      'y'
    when Morse.z
      'z'
    when Morse.one
      '1'
    when Morse.two
      '2'
    when Morse.three
      '3'
    when Morse.four
      '4'
    when Morse.five
      '5'
    when Morse.six
      '6'
    when Morse.seven
      '7'
    when Morse.eight
      '8'
    when Morse.nine
      '9'
    when Morse.zero
      '0'
    when Morse::MORSE_WORD_DELIMITER
      ' '
    when Morse::MORSE_CHARACTER_DELIMITER
      ''
    end
  end

  def conv_character(character)
    case character.downcase
    when 'a'
      Morse.a
    when 'b'
      Morse.b
    when 'c'
      Morse.c
    when 'd'
      Morse.d
    when 'e'
      Morse.e
    when 'f'
      Morse.f
    when 'g'
      Morse.g
    when 'h'
      Morse.h
    when 'i'
      Morse.i
    when 'j'
      Morse.j
    when 'k'
      Morse.k
    when 'l'
      Morse.l
    when 'm'
      Morse.m
    when 'n'
      Morse.n
    when 'o'
      Morse.o
    when 'p'
      Morse.p
    when 'q'
      Morse.q
    when 'r'
      Morse.r
    when 's'
      Morse.s
    when 't'
      Morse.t
    when 'u'
      Morse.u
    when 'v'
      Morse.v
    when 'w'
      Morse.w
    when 'x'
      Morse.x
    when 'y'
      Morse.y
    when 'z'
      Morse.z
    when '0'
      Morse.zero
    when '1'
      Morse.one
    when '2'
      Morse.two
    when '3'
      Morse.three
    when '4'
      Morse.four
    when '5'
      Morse.five
    when '6'
      Morse.six
    when '7'
      Morse.seven
    when '8'
      Morse.eight
    when '9'
      Morse.nine
    when ' '
      Morse::MORSE_WORD_DELIMITER
    end
  end
end