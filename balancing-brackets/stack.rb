
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
      break
    end
  end

  stack.empty?
end
