
def balanced?(str)
  if str.length % 2 != 0
    return false
  end

  ary = str.split('')
  stack = []

  ary.each do |c|
    if c == "("
      stack << c
    elsif (c == ")") && (stack.last == "(")
      stack << c
      stack.pop(2)
    else
      stack << c
    end
  end

  if stack.empty?
    true
  else
    false
  end
end

####  INPUT

str = ""  # true  (even)
puts "---#{str} is #{balanced?(str)}---"

str = ")(" # true  (even, not closed)
puts "---#{str} is #{balanced?(str)}---"

str = "))" # false  (even, not closed)
puts "---#{str} is #{balanced?(str)}---"

str = "(()(" # false  (odd = false)
puts "---#{str} is #{balanced?(str)}---"

str = "(()" # false  (odd = false)
puts "---#{str} is #{balanced?(str)}---"

str = "(())"  # true  (even, closed, true)
puts "---#{str} is #{balanced?(str)}---"

str = "((())"  # false  (odd = false)
puts "---#{str} is #{balanced?(str)}---"

str = "(()())"  # true  (even, closed, true)
puts "---#{str} is #{balanced?(str)}---"

str = "()()()"  # true  (even, closed, true)
puts "---#{str} is #{balanced?(str)}---"
