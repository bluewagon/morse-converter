require 'minitest/autorun'
require_relative '../app/morse_code_converter'

class ConvertTests < Minitest::Test
  def setup
    @converter = MorseCodeConverter.new
    @space = ' ' * 3
  end

  # testing one character at a time instead of all in one
  # test so it will be easier to see which one specifically breaks in refactors

  def test_it_should_handle_uppercase
    code = @converter.to_morse('A')
    assert_equal '.-', code
  end

  def test_it_should_convert_a_word
    code = @converter.to_morse('blue')
    assert_equal "-...#{@space}.-..#{@space}..-#{@space}.", code
  end

  def test_it_should_convert_multiple_words
    code = @converter.to_morse('blue sky')
    blue = "-...#{@space}.-..#{@space}..-#{@space}."
    sky = "...#{@space}-.-#{@space}-.--"
    word_delim = ' ' * 7
    assert_equal "#{blue}#{word_delim}#{sky}", code
  end

  def test_it_should_convert_a_to_morse
    code = @converter.to_morse('a')
    assert_equal '.-', code
  end

  def test_it_should_convert_b_to_morse
    code = @converter.to_morse('b')
    assert_equal '-...', code
  end

  def test_it_should_convert_c_to_morse
    code = @converter.to_morse('c')
    assert_equal '-.-.', code
  end

  def test_it_should_convert_d_to_morse
    code = @converter.to_morse('d')
    assert_equal '-..', code
  end

  def test_it_should_convert_e_to_morse
    code = @converter.to_morse('e')
    assert_equal '.', code
  end

  def test_it_should_convert_f_to_morse
    code = @converter.to_morse('f')
    assert_equal '..-.', code
  end

  def test_it_should_convert_g_to_morse
    code = @converter.to_morse('g')
    assert_equal '--.', code
  end

  def test_it_should_convert_h_to_morse
    code = @converter.to_morse('h')
    assert_equal '....', code
  end

  def test_it_should_convert_i_to_morse
    code = @converter.to_morse('i')
    assert_equal '..', code
  end

  def test_it_should_convert_j_to_morse
    code = @converter.to_morse('j')
    assert_equal '.---', code
  end

  def test_it_should_convert_k_to_morse
    code = @converter.to_morse('k')
    assert_equal '-.-', code
  end

  def test_it_should_convert_l_to_morse
    code = @converter.to_morse('l')
    assert_equal '.-..', code
  end

  def test_it_should_convert_m_to_morse
    code = @converter.to_morse('m')
    assert_equal '--', code
  end

  def test_it_should_convert_n_to_morse
    code = @converter.to_morse('n')
    assert_equal '-.', code
  end

  def test_it_should_convert_o_to_morse
    code = @converter.to_morse('o')
    assert_equal '---', code
  end

  def test_it_should_convert_p_to_morse
    code = @converter.to_morse('p')
    assert_equal '.--.', code
  end

  def test_it_should_convert_q_to_morse
    code = @converter.to_morse('q')
    assert_equal '--.-', code
  end

  def test_it_should_convert_r_to_morse
    code = @converter.to_morse('r')
    assert_equal '.-.', code
  end

  def test_it_should_convert_s_to_morse
    code = @converter.to_morse('s')
    assert_equal '...', code
  end

  def test_it_should_convert_t_to_morse
    code = @converter.to_morse('t')
    assert_equal '-', code
  end

  def test_it_should_convert_u_to_morse
    code = @converter.to_morse('u')
    assert_equal '..-', code
  end

  def test_it_should_convert_v_to_morse
    code = @converter.to_morse('v')
    assert_equal '...-', code
  end

  def test_it_should_convert_w_to_morse
    code = @converter.to_morse('w')
    assert_equal '.--', code
  end

  def test_it_should_convert_x_to_morse
    code = @converter.to_morse('x')
    assert_equal '-..-', code
  end

  def test_it_should_convert_y_to_morse
    code = @converter.to_morse('y')
    assert_equal '-.--', code
  end

  def test_it_should_convert_z_to_morse
    code = @converter.to_morse('z')
    assert_equal '--..', code
  end

  def test_it_should_convert_1_to_morse
    code = @converter.to_morse('1')
    assert_equal '.----', code
  end

  def test_it_should_convert_2_to_morse
    code = @converter.to_morse('2')
    assert_equal '..---', code
  end

  def test_it_should_convert_3_to_morse
    code = @converter.to_morse('3')
    assert_equal '...--', code
  end

  def test_it_should_convert_4_to_morse
    code = @converter.to_morse('4')
    assert_equal '....-', code
  end

  def test_it_should_convert_5_to_morse
    code = @converter.to_morse('5')
    assert_equal '.....', code
  end

  def test_it_should_convert_6_to_morse
    code = @converter.to_morse('6')
    assert_equal '-....', code
  end

  def test_it_should_convert_7_to_morse
    code = @converter.to_morse('7')
    assert_equal '--...', code
  end

  def test_it_should_convert_8_to_morse
    code = @converter.to_morse('8')
    assert_equal '---..', code
  end

  def test_it_should_convert_9_to_morse
    code = @converter.to_morse('9')
    assert_equal '----.', code
  end

  def test_it_should_convert_0_to_morse
    code = @converter.to_morse('0')
    assert_equal '-----', code
  end
end