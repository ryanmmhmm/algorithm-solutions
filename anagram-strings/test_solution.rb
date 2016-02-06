require './test_helper'
require 'solution.rb'

class TestSolution < MiniTest::Test

  # def setup
  # end

  def test_that_anagrams_are_anagrams
    assert_equal(true, anagram?("Eleven plus two","Twelve plus one"))
  end

  def test_that_this_is_also_an_anagram
    assert_equal(true, anagram?("dog", "god"))
  end

  def test_that_same_inputs_are_false
    assert_equal(false, anagram?("Can I Haz CheezeBurger?", "can i haz cheezeburger?"))
  end

  def test_that_pair_must_be_same_length
    assert_equal(false, anagram?("Can I Haz CheezeBurger?", "I Can No Haz CheezeBurger"))
  end

  def test_that_stray_chars_removed
    assert_equal(true, anagram?("!@#$%^&*()}Mother-In-Law","Woman Hitler"))
  end

end