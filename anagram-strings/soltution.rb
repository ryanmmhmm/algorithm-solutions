
## an anagram is a type of worldplay, the result of rearranging the letters
## of a word or phrase to produce a new word, or phrase, using all the original
## letters exactly once

def anagram?(str1, str2)
  str1 = format_string(str1)
  str2 = format_string(str2)
  return false if str1 == str2  # anagrams must be different words
  return false if (str1.length == 0) || (str2.length == 0) # words must contain chars
  return false if (str1.length != str2.length)  # words must have equal length

  convert_string(str1) == convert_string(str2)
end

def format_string(string)
  string.tr!(' ','')
  string.gsub!(/[`~!@#$%^&*()_+-={}\|:;"'<,>.?]/,'')
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

input1 = "Eleven plus two"
input2 = "Twelve plus one"
puts "> #{input1} + #{input2} is #{anagram?(input1,input2)}"  # true

input1 = "dog"
input2 = "god"
puts "> #{input1} + #{input2} is #{anagram?(input1,input2)}"  # true

input1 = "Can I Haz CheezeBurger?"
input2 = "can i haz cheezeburger?"
puts "> #{input1} + #{input2} is #{anagram?(input1,input2)}"  # false

input1 = "Can I Haz CheezeBurger?"
input2 = "I Can No Haz CheezeBurger"
puts "> #{input1} + #{input2} is #{anagram?(input1,input2)}"  # false

input1 = "!@#$%^&*()}Mother-In-Law"
input2 = "Woman Hitler"
puts "> #{input1} + #{input2} is #{anagram?(input1,input2)}"  # true!
## thanks http://www.fun-with-words.com/anag_example.html for this little nugget
