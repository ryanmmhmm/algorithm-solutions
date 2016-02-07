## bracket closure stack example for presentation with multiple bracket types

def balanced?(string)
  set = {"(": ")", "{": "}", "[": "]"}
  stack = []

  string.each_char do |c|
    if set.include?(c.to_sym)  # open bracket?
      stack.push(c)
    elsif set.values.include?(c) && stack.last == set.key(c).to_s  # closed bracket with closure?
      stack.push(c)
      stack.pop(2)
    else  # closed bracket without closure
      stack.push(c)
      break
    end
  end

  stack.empty?  ## stack will have values even when all open brackets
end

string = "()"
puts "#{string} is #{balanced?(string)}"

string = "())"
puts "#{string} is #{balanced?(string)}"

string = "()(("
puts "#{string} is #{balanced?(string)}"

string = "(()())"
puts "#{string} is #{balanced?(string)}"

string = ")(" ## this case requires a break command if closure < 0
puts "#{string} is #{balanced?(string)}"

string = "({}[])" ## this case requires a break command if closure < 0
puts "#{string} is #{balanced?(string)}"

string = "({[}])" ## this case requires a break command if closure < 0
puts "#{string} is #{balanced?(string)}"
