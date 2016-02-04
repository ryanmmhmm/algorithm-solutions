require './test_helper'
require 'solution.rb'

class TestSolution < MiniTest::Test

  def setup
    @input1 = "aaabbbccc"
    @input2 = "aaaabbbbcccc"
    @input3 = "aaaaabbbbbccccc"
    @input4 = "aaaaaabbbbbbcccccc"
  end

  def test_that_transforms_for_input1
    assert_equal("abcabcabc", convert_array(@input1))
  end

  def test_that_transforms_for_input2
    assert_equal("abcabcabcabc", convert_array(@input2))
  end

  def test_that_transforms_for_input3
    assert_equal("abcabcabcabcabc", convert_array(@input3))
  end

  def test_that_transforms_for_input4
    assert_equal("abcabcabcabcabcabc", convert_array(@input4))
  end

end
