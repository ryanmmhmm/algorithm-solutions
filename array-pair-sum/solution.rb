require 'pry'

INPUT = [2,3,4,5,6,1,1]

## Given an integer array, output all pairs that sum up to a specific value k

## Change the value of k for different inputs

k = 5

input = INPUT

## only output a pairing once, so removing duplicates
input.uniq!

## sort array from smallest to largest
input.sort!

## pointers reference an index of the modified input array.
## beginning of array
pointer1 = 0

## end of array
pointer2 = INPUT.length - 1


while pointer1 != pointer2 do
  sum = input[pointer1] + input[pointer2]
  if sum == k
    puts "(#{input[pointer1]},#{input[pointer2]})"
    pointer1 += 1
  elsif sum <= k
    pointer1 += 1
  else
    pointer2 -= 1
  end
end
