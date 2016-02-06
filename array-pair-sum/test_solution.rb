require './test_helper'
require 'solution.rb'

class TestSolution < MiniTest::Test

  def setup
    @input = [2,3,4,5,6,1,1]
    @sum_value = 5

    # "(1,6)","(2,5)","(3,4)"
    @input2 = [1,2,3,4,5,6,7,8,9]
    @sum_value2 = 7
  end

  def test_that_array_pair_sums_for_input
    assert_equal(["(1,4)","(2,3)"],array_pair_sums(@input,@sum_value))
  end

  def test_that_array_pair_sums_for_input2
    assert_equal(["(1,6)","(2,5)","(3,4)"], array_pair_sums(@input2,@sum_value2))
  end

end