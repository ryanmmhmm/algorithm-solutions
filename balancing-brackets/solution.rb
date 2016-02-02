
def balanced?(str)

  true

end




####  INPUT

str = ""  # true  (even)
puts "---#{str} is #{balanced?(str).upcase}---"

str = ")(" # true  (even, not closed)
puts "---#{str} is #{balanced?(str).upcase}---"

str = "))" # false  (even, not closed)
puts "---#{str} is #{balanced?(str).upcase}---"

str = "(()" # false  (odd = false)
puts "---#{str} is #{balanced?(str).upcase}---"

str = "(())"  # true  (even, closed, true)
puts "---#{str} is #{balanced?(str).upcase}---"

str = "((())"  # false  (odd = false)
puts "---#{str} is #{balanced?(str).upcase}---"

str = "(()())"  # true  (even, closed, true)
puts "---#{str} is #{balanced?(str).upcase}---"
