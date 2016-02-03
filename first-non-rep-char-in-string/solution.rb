
## output the first non repepating character

def repeating?(str)

  return "none" if str.length == 0
  stack = [] #use a stack to compare values

  str.each_char do |c|
    stack << c
    if stack.length == 2 && (stack.first != stack.last)
      stack.pop
      break
    elsif stack.length > 2 && (stack.first != stack.last)
      stack = [c]
    end
  end

  if stack.empty?
    "none"
  else
    return stack.first
  end
end

## if stack is empty, no repeating characters
## if stack has character, and is same, stack.shift
## if stack has characters, and is different, stack = c.to_a
## if stack has a character, and is different, break

str = "ddddhhherrt"
puts "#{repeating?(str)}"

str = "abcd"
puts "#{repeating?(str)}"

str = "aabcd"
puts "#{repeating?(str)}"

str = "aabbcd"
puts "#{repeating?(str)}"

str = "aabbccd"
puts "#{repeating?(str)}"

