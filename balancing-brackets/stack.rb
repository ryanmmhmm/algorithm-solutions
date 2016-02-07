
def balanced?(str)

  str = remove_everything_but_brackets(str)

  if str.length % 2 != 0
    return false
  end

  stack = []

  str.each_char do |c|

    if c == "("
      stack.push(c)
    elsif (c == ")") && (stack.last == "(")
      stack.push(c)
      stack.pop(2)
    else
      stack.push(c)
      break
    end

  end

  stack.empty?
end

def remove_everything_but_brackets(input)
  input.gsub(/[^(){}\[\]]/,'')
end
