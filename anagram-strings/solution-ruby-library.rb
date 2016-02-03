

def anagram?(str)
  return false if str.length == 0

  reverse = str.reverse

  if str == reverse
    true
  else
    false
  end
end