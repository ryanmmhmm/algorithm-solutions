
## Find the element that occurs once more or less than the rest of the
## elements in the given set.

##Example:
## input1 = [(n-1)a, (n-1)b, (n)c] : length = uniq_chars * n - 1, length == odd, uniq_chars == odd
## input2 = [(n+1)a, (n+1)b, (n)c] : length = uniq_chars * n + 2, length == even, uniq_chars == even
## input3 = [(n-1)a, (n-1)b, (n-1)c, (n)d] : length = uniq_chars * n - 1, length == odd, uniq_chars == even
## input4 = [(n+1)a, (n+1)b, (n+1)c, (n)d] : length = uniq_chars * n + 2, length == even, uniq_chars == even
## length = (uniq_chars * n) * uniq_chars - (uniq_chars - 1)

## Example:
## - "string" == length, uniq_chars, n, true/false
## 1, "a" == odd, odd, odd, true
## 2, "aa" == even, odd, false
## 3, "aab" == odd, even, odd, true
## 4, "abcc" == even, odd, odd, true
## 5, "aabbc" == odd, odd, odd, true
## 6, "aabbcc" == even, odd, false
## 7, "aabbccd" == odd, even, true
## 8, "aaabbbcc" == even, odd, true
## 9, "aaabbbccc" == odd, odd, false
## 10, "aaabbbcccc" == even, odd, true


## Rules:
## return input if input.length == 1
## input.length > 2

def odd_one_out?(input)
  return input if input.length == 1
  return false if input.length <= 2

  str = input.to_s
  table = {}

  str.each_char do |c|
    if table.keys.include?(c.to_sym)
      table[c.to_sym] += 1
    else
      table[c.to_sym] = 1
    end
  end

  check_table(table, str)

end

def check_table(table, str)

end

input = "a"
puts "The odd element out in #{input} is #{odd_one_out?(input)}."

input = "aab"
puts "The even character in #{input} is #{odd_one_out?(input)}."

input = "aabbc"
puts "The even character in #{input} is #{odd_one_out?(input)}."

input = "aabbc"
puts "The even character in #{input} is #{odd_one_out?(input)}."

