## Reverse all the words in a string of words.
## Example: "Hello algorithm solver!"
## Transforms to: "solver! algorithm Hello"


def reverse_words(string)
  ary = format_string(string)
end

def format_string(string)
  ary = string.split('')
end