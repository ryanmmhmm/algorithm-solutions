
## Find the element that occurs an even number of times
## all other elements will be odd

## Rules:
## input.length > 0

def even_times?(input)
  return false if input.length == 0

  str = input.to_s
  table = {}

  str.each_char do |c|
    if table.keys.include?(c.to_sym)
      table[c.to_sym] += 1
    else
      table[c.to_sym] = 1
    end
  end

  check_table(table)

end

def check_table(table)
  even = []
  table.each do |key, value|
    if value % 2 == 0
      even = key
      break
    end
  end

  not even.empty?
end

input = "asdfasdfasd"
puts "#{input} is #{even_times?(input)}"

input = "asdfasdfasdf"
puts "#{input} is #{even_times?(input)}"
