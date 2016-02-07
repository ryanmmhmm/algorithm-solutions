## Counter method for determining single-type bracket closure

def balanced?(string)

  stack = []
  closure = 0

  string.each_char do |c|

    if c == "("
      closure += 1
    elsif c == ")"
      closure -= 1
    end

    break if closure < 0
  end

  closure == 0
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
