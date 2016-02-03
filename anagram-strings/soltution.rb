
## an anagram is a type of worldplay, the result of rearranging the letters
## of a word or phrase to produce a new word, or phrase, using all the original
## letters exactly once

def anagram?(str1, str2)
  return false if str.length == 0

  str1 = format_string(str1)
  str2 = format_string(str2)

end

def format_string(string)
  string.tr!(' ','')
  string.gsub(/[`~!@#$%^&*()_+-={}\|:;"'<,>.?]/,'')
  string.downcase!
end

str1 = "Eleven is two"
str2 = "Twelve plus one"
puts "#{str} is #{anagram?(str)}"  # true
