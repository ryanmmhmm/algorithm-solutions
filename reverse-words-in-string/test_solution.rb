require './test_helper'
require 'solution.rb'

class TestSolution < MiniTest::Test

  def setup
    @input = "Hello algorithm solver!"
  end

  def test_that_words_are_reversed
    assert_equal("solver! algorithm Hello", reverse_words(@input))
  end

  def test_that_multiple_spaces_are_removed
    assert_equal("solver! algorithm Hello", reverse_words(@input.tr(' ','  ')))
  end

  def test_that_punctuation_can_be_its_own_word
    assert_equal("! solver algorithm Hello", reverse_words("Hello algorithm solver !"))
  end

  # def test_that_transforms_for_input4
  # end

end