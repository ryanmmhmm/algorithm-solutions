
def balanced?(string)

  str = remove_everything_but_brackets(string)
  set = define_bracket_sets

  if str.length % 2 != 0
    return false
  end

  stack = []

  str.each_char do |c|

    if set.include?(c.to_sym)
      stack.push(c)
    elsif (set.values.include?(c)) && (stack.last == set.key(c).to_s)
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

def define_bracket_sets
  { "(": ")", "{": "}", "[": "]" }
end
