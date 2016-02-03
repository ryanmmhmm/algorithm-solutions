
## an anagram is a type of worldplay, the result of rearranging the letters
## of a word or phrase to produce a new word, or phrase, using all the original
## letters exactly once

def anagram?(str1, str2)
  return false if (str1.length == 0) || (str2.length == 0)
  return false if (str1.length != str2.length)

  str1 = format_string(str1)
  str2 = format_string(str2)

  str1

end

def format_string(string)
  string.tr!(' ','')
  string.gsub(/[`~!@#$%^&*()_+-={}\|:;"'<,>.?]/,'')
  string.downcase!
end

str1 = "Eleven is two"
str2 = "Twelve plus one"
puts "#{str1} is #{anagram?(str1,str2)}"  # true
