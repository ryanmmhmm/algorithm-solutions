## Reverse all the words in a string of words.
## Example: "Hello algorithm solver!"
## Transforms to: "solver! algorithm Hello"


def reverse_words(string)
  output = []
  stack = []

  string.each_char do |c|
    stack.push(c)

    if (stack.last == ' ') && (stack.length == 1)
      stack.pop
    elsif stack.last == ' '
      stack.pop
      output.insert(0, stack.join)
      stack.clear
    end

  end

  output.insert(0, stack.join)
  output.join(' ')
end
