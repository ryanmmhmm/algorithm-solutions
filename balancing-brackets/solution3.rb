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
      closures[match.to_sym] -= 1
    end

    break if ....
    ## this is where this solution breaks down.
    ## you would have to check each bracket type and determine
    ## if it is < 0 in the closures hash.
    ## The STACK is the methodology because it checks as it handles
    ## each character without having to reverse lookup

    ## NOTE: hashes are fast when referencing keys
    ## they are not as useful when referencing values
  end

end