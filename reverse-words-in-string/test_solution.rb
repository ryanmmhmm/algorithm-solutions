require './test_helper'
require 'solution.rb'

class TestSolution < MiniTest::Test

  def setup
    @input = "Hello algorithm solver!"
  end

  def test_that_words_are_reversed
    assert_equal("solver! algorithm Hello", reverse_words(@input))
  end

  # def test_that_transforms_for_input2
  # end

  # def test_that_transforms_for_input3
  # end

  # def test_that_transforms_for_input4
  # end

end