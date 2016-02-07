require './test_helper'
require 'stack.rb'

class TestSolution < MiniTest::Test

  def setup
    @case1 = ""
    @case2 = ")("
    @case3 = "(()"
    @case4 = "(())"
    @case5 = "()()()"
    @case6 = "(()())"
    @case7 = "()()()((()))()(())(((()))("
    @case8 = "()()())(()))()(())(((())))"
  end

  def test_that_case1_is_true
    assert_equal(true, balanced?(@case1))
  end

  def test_that_case2_is_false
    assert_equal(false, balanced?(@case2))
  end

  def test_that_case3_is_false  ## odd
    assert_equal(false, balanced?(@case3))
  end

  def test_that_case4_is_true
    assert_equal(true, balanced?(@case4))
  end

  def test_that_case5_is_true
    assert_equal(true, balanced?(@case5))
  end

  def test_that_case6_is_true
    assert_equal(true, balanced?(@case6))
  end

  def test_that_case7_is_false
    assert_equal(false, balanced?(@case7))
  end

  def test_that_case8_is_false
    assert_equal(false, balanced?(@case8))
  end

end