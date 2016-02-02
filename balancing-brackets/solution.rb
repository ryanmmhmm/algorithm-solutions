
def balanced?(str)

  if str.empty?
    return true
  elsif str.length % 2 != 0
    return false
  elsif str[0] == ")"
    return false
  else
    init(str)
  end

  while (@flag == nil) do
    @flag = scan_right
  end

  @flag
end

def init(str)
  @ary = str.split('')
  @l = 0  # pointer for left bracket
  @r = 0  # pointer for right bracket
  @flag = nil
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
