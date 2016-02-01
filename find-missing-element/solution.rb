## Given two arrays
## Array1 is x in length and contains random integers
## Array2 is a copy of Array1 with one random element deleted

def sum_array(array)
  sum = 0
  array.each do |value|
    sum += value
  end
  sum
end

def copy_array(array)
  size = array.count
  new_array = Array.new(size)

  array.each_with_index do |value, i|
    new_array[i] = value
  end

  return new_array
end

## Find the value of the missing element

@array1 = Array.new(10)

# give random value to elements in the array

@array1.map!.each do |x|
  x = rand(100)
end

# define array2

@array2 = copy_array(@array1)
@array2.delete_at(rand(@array2.count))

missing_number = sum_array(@array1) - sum_array(@array2)
