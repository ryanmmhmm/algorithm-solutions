
## an anagram is a type of worldplay, the result of rearranging the letters
## of a word or phrase to produce a new word, or phrase, using all the original
## letters exactly once

def anagram?(str1, str2)
  str1 = format_string(str1)
  str2 = format_string(str2)
  return false if (str1.length == 0) || (str2.length == 0)
  return false if (str1.length != str2.length)

end

def format_string(string)
  string.tr!(' ','')
  string.gsub(/[`~!@#$%^&*()_+-={}\|:;"'<,>.?]/,'')
  string.downcase!
  string
end

# str1 = "Eleven plus two"
# str2 = "Twelve plus one"
str1 = "dog"
str2 = "god"
puts "#{str1} + #{str2} is #{anagram?(str1,str2)}"  # true
