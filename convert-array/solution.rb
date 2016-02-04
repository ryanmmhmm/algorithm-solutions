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

  puts set = str.length / 3  # determines number of iterations for a full set
  ary = str.split('')

  ## beginning index positions of char sets to translate
  a = 0
  b = 1 * set
  c = 2 * set
  n = set  # track the number of chars remaining in the sets

  ## i must always be >= 1
  ## insert method puts char BEFORE current index
  for i in (0...set)
    a = 3 * i
    ary[a + 1].insert(ary.slice!())

    b = 3 * i + n
    ary[b + 1].insert(ary.slice!())

    c = 3 * i + 2 * n
    ary[c + 1].insert(ary.slice!())

    n -= 1 # all sets reduced by 1
  end

  ary

end

input = "aaabbbccc"  # "abcabcabc"
puts "#{input} translates to #{convert_array(input)}"

input = "aaaabbbbcccc"  # "abcabcabcabc"
puts "#{input} translates to #{convert_array(input)}"
