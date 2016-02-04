## Convert:
## [a_1, a_2, ..., a_N, b_1, b_2, ..., b_N, c_1, c_2, ..., c_N ]
## to
## [a_1, b_1, c_1, a_2, b_2, c_2, ..., a_N, b_N, c_N]
## using constant extra space.
##

## Example indexes relative to N:
## [0...N,N+1...2N,2N+1...3N]  or
## [a..aN,b..bN,c..cN]
## for [aaaa bbbb cccc] (N = 4)
## 1 = [abc aaa bbb ccc]
## 2 = [aabbcc aa bb cc]
## 3 = [aaabbbccc a b c]
## 4 = [aaaa bbbb cccc]

## Input is a string of length 3N (if true)
## Output is a string of length 3N that has been rearranged

## Rules:
## str.length >= 3  must be at least 3 chars long
## str.length % 3 == 0  will always be divisible by 3

def convert_array(str)
  return "*invalid input*" if (str.length < 3) || (str.length % 3 != 0)

  set = str.length / 3  # determines number of iterations for a full set
  ary = str.split('')

  n = str.length / 3  # track the number of chars remaining in the sets
  puts "set: #{set}"
  a = 0

  for i in (1...set)
  ## insert method puts char BEFORE current index
  ## i represents the number of sets that have been itterated
    b = a + n
    b_value = ary.slice!(b)
    ary.insert(a + 1, b_value)

    c = b + n
    c_value = ary.slice!(c)
    ary.insert(a + 2, c_value)

    n -= 1 # all sets reduced by 1
    a += 3
  end

  ary.join

end

input = "aaabbbccc"  # set = 3 "abcabcabc" 0/3/6 -> "abcaabbcc" -> 3/5/7 -> "abcabcabc"
puts "#{input} translates to #{convert_array(input)}"

input = "aaaabbbbcccc"  # set = 4 "abcabcabcabc" 0/4/8 -> "abcaaabbbccc" -> 3/6/9 -> "abcabcaabbcc" -> 6/8/10
puts "#{input} translates to #{convert_array(input)}"

input = "aaaaabbbbbccccc"  # set = 5
puts "#{input} translates to #{convert_array(input)}"

input = "aaaaaabbbbbbcccccc"  # set = 6
puts "#{input} translates to #{convert_array(input)}"
