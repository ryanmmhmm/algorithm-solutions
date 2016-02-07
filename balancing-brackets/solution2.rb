## Basic stack solution for one-type bracket closure.

def balanced?(string)

  stack = []

  string.each_char do |c|
    if c == "("
      stack.push(c)
    elsif c == ")" && stack.last == "("
      stack.push(c)
      stack.pop(2)
    else
      stack.push(c)
      break
    end
  end

  stack.empty?
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
