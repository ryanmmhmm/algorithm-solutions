## Calculate all permutations of a given string

str = "yes"

def join_sets(set)
  set.map!.each do |x|
    x = x.join
  end

  set
end

def permutations(string)
  if string.length == 1
    return string
  else
    chars = string.split('')
    perms = chars.permutation.to_a

    perms = join_sets(perms)
  end
end

permutations(str)
