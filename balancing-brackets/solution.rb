
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
    scan_right
    @flag = check_validity(@ary)
  end

  @flag
end

def init(str)
  @ary = str.split('')
  @l = 0  # pointer for left bracket
  @r = 0  # pointer for right bracket
  @flag = nil
end

def check_validity(input)
  if input.empty?
    return true
  elsif input.length % 2 != 0
    return false
  elsif input[0] == ")"
    return false
  else
    nil
  end
end

def scan_right

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
