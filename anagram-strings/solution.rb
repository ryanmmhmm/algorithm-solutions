
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
