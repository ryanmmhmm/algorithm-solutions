
def balanced?(str)

  if str.empty?
    return true
  elsif str.length % 2 != 0
    return false
  end

  ary = str.split('')

end




####  INPUT

str = ""  # true  (even)
puts "---#{str} is #{balanced?(str)}---"

str = ")(" # true  (even, not closed)
puts "---#{str} is #{balanced?(str)}---"

str = "))" # false  (even, not closed)
puts "---#{str} is #{balanced?(str)}---"

str = "(()" # false  (odd = false)
puts "---#{str} is #{balanced?(str)}---"

str = "(())"  # true  (even, closed, true)
puts "---#{str} is #{balanced?(str)}---"

str = "((())"  # false  (odd = false)
puts "---#{str} is #{balanced?(str)}---"

str = "(()())"  # true  (even, closed, true)
puts "---#{str} is #{balanced?(str)}---"
