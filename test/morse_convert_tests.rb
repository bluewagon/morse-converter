require 'minitest/autorun'
require_relative '../app/morse_code_converter'
require_relative '../app/morse'

class MorseConvertTests < Minitest::Test
  def setup
    @converter = MorseCodeConverter.new
    @space = ' ' * 3
    @word_space = ' ' * 7
  end

  def test_it_should_convert_to_blue
    morse = "-...#{@space}.-..#{@space}..-#{@space}."
    word = @converter.to_characters(morse)
    assert_equal 'blue', word
  end

  def test_it_should_convert_to_blue_wagon
    morse = "-...#{@space}.-..#{@space}..-#{@space}.#{@word_space}.--#{@space}.-#{@space}--.#{@space}---#{@space}-."
    word = @converter.to_characters(morse)
    assert_equal 'blue wagon', word
  end

  def test_it_should_convert_a
    character = @converter.to_characters('.-')
    assert_equal 'a', character
  end

  def test_it_should_convert_b
    character = @converter.to_characters('-...')
    assert_equal 'b', character
  end

  def test_it_should_convert_c
    character = @converter.to_characters('-.-.')
    assert_equal 'c', character
  end

  def test_it_should_convert_d
    character = @converter.to_characters('-..')
    assert_equal 'd', character
  end

  def test_it_should_convert_e
    character = @converter.to_characters('.')
    assert_equal 'e', character
  end

  def test_it_should_convert_f
    character = @converter.to_characters('..-.')
    assert_equal 'f', character
  end

  def test_it_should_convert_g
    character = @converter.to_characters('--.')
    assert_equal 'g', character
  end

  def test_it_should_convert_h
    character = @converter.to_characters('....')
    assert_equal 'h', character
  end

  def test_it_should_convert_i
    character = @converter.to_characters('..')
    assert_equal 'i', character
  end

  def test_it_should_convert_j
    character = @converter.to_characters('.---')
    assert_equal 'j', character
  end

  def test_it_should_convert_k
    character = @converter.to_characters('-.-')
    assert_equal 'k', character
  end

  def test_it_should_convert_l
    character = @converter.to_characters('.-..')
    assert_equal 'l', character
  end

  def test_it_should_convert_m
    character = @converter.to_characters('--')
    assert_equal 'm', character
  end

  def test_it_should_convert_n
    character = @converter.to_characters('-.')
    assert_equal 'n', character
  end

  def test_it_should_convert_o
    character = @converter.to_characters('---')
    assert_equal 'o', character
  end

  def test_it_should_convert_p
    character = @converter.to_characters('.--.')
    assert_equal 'p', character
  end

  def test_it_should_convert_q
    character = @converter.to_characters('--.-')
    assert_equal 'q', character
  end

  def test_it_should_convert_r
    character = @converter.to_characters('.-.')
    assert_equal 'r', character
  end

  def test_it_should_convert_s
    character = @converter.to_characters('...')
    assert_equal 's', character
  end

  def test_it_should_convert_t
    character = @converter.to_characters('-')
    assert_equal 't', character
  end

  def test_it_should_convert_u
    character = @converter.to_characters('..-')
    assert_equal 'u', character
  end

  def test_it_should_convert_v
    character = @converter.to_characters('...-')
    assert_equal 'v', character
  end

  def test_it_should_convert_w
    character = @converter.to_characters('.--')
    assert_equal 'w', character
  end

  def test_it_should_convert_x
    character = @converter.to_characters('-..-')
    assert_equal 'x', character
  end

  def test_it_should_convert_y
    character = @converter.to_characters('-.--')
    assert_equal 'y', character
  end

  def test_it_should_convert_z
    character = @converter.to_characters('--..')
    assert_equal 'z', character
  end

  def test_it_should_convert_zero
    character = @converter.to_characters('-----')
    assert_equal '0', character
  end

  def test_it_should_convert_one
    character = @converter.to_characters('.----')
    assert_equal '1', character
  end

  def test_it_should_convert_two
    character = @converter.to_characters('..---')
    assert_equal '2', character
  end

  def test_it_should_convert_three
    character = @converter.to_characters('...--')
    assert_equal '3', character
  end

  def test_it_should_convert_four
    character = @converter.to_characters('....-')
    assert_equal '4', character
  end

  def test_it_should_convert_five
    character = @converter.to_characters('.....')
    assert_equal '5', character
  end

  def test_it_should_convert_six
    character = @converter.to_characters('-....')
    assert_equal '6', character
  end

  def test_it_should_convert_seven
    character = @converter.to_characters('--...')
    assert_equal '7', character
  end

  def test_it_should_convert_eight
    character = @converter.to_characters('---..')
    assert_equal '8', character
  end

  def test_it_should_convert_nine
    character = @converter.to_characters('----.')
    assert_equal '9', character
  end
end