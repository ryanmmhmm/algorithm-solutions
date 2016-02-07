## Counting closures with a hash-table

def balanced?(string)

  openingSet = ["(","{","["]
  closingSet = [")","}","]"]
  closures = { "(": 0, "{": 0, "[": 0}

  string.each_char do |c|
    if openingSet.include?(c)
      closures[c.to_sym] += 1
    elsif closingSet.include?(c)
      match = closingSet.index(c)
      match = openingSet[match]
      closures[match.to_sym] -= 1
      break if closures[match.to_sym] < 0
    end
  end

  ## this is where this solution breaks down.
  ## you would have to check each bracket type and determine
  ## if it is < 0 in the closures hash.
  ## The STACK is the methodology because it checks as it handles
  ## each character without having to reverse lookup at the end

  ## NOTE: hashes are fast when referencing keys
  ## they are not as useful when referencing values
  ## --UNLESS the value is UNIQUE to to the key in the set--

  output = nil

  closures.each do |key,value|
    if value != 0
      output = false
      break
    else
      output = true
    end
  end

  output
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
