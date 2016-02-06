require './test_helper'
require 'solution.rb'

class TestSolution < MiniTest::Test

  def setup
    @input = [2,3,4,5,6,1,1]
    @sum_value = 5
  end

  def test_that_transforms_for_input1
    assert_equal(["(1,4)","(2,3)"],array_pair_sums(@input,@sum_value))
  end

end