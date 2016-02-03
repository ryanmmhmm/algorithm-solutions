
## an anagram is a type of worldplay, the result of rearranging the letters
## of a word or phrase to produce a new word, or phrase, using all the original
## letters exactly once

def anagram?(str1, str2)
  str1 = format_string(str1)
  str2 = format_string(str2)
  return false if (str1.length == 0) || (str2.length == 0)
  return false if (str1.length != str2.length)

  convert_string(str1) == convert_string(str2)
end

def format_string(string)
  string.tr!(' ','')
  string.gsub(/[`~!@#$%^&*()_+-={}\|:;"'<,>.?]/,'')
  string.downcase!
  string
end

def convert_string(string)
  table = {}
  string.each_char do |value|
    if table.keys.include?(value.to_sym)
      table[value.to_sym] += 1
    else
      table[value.to_sym] = 1
    end
  end

  table
end

str1 = "Eleven plus two"
str2 = "Twelve plus one"
puts "> #{str1} + #{str2} is #{anagram?(str1,str2)}"  # true

str1 = "dog"
str2 = "god"
puts "> #{str1} + #{str2} is #{anagram?(str1,str2)}"  # true

str1 = "Can I Haz CheezeBurger?"
str2 = "can i haz cheezeburger?"
puts "> #{str1} + #{str2} is #{anagram?(str1,str2)}"  # false

str1 = "Can I Haz CheezeBurger?"
str2 = "I Can No Haz CheezeBurger"
puts "> #{str1} + #{str2} is #{anagram?(str1,str2)}"  # false
