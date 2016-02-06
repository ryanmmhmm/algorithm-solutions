
## Given an integer array, output all pairs that sum up to a specific value k
## Change the value of k for different inputs
k = 5
input = [2,3,4,5,6,1,1]

def array_pair_sums(input, sum_value)
  k = sum_value

  ## only output a pairing once, so removing duplicates
  input.uniq!

  ## sort array from smallest to largest
  input.sort!

  ## pointers reference an index of the modified input array.
  ## beginning & end index of array
  pointer1 = 0
  pointer2 = input.length - 1

  output = []

  while pointer1 != pointer2 do
    sum = input[pointer1] + input[pointer2]
    if sum == k
      output.push("(#{input[pointer1]},#{input[pointer2]})")
      pointer1 += 1
    elsif sum <= k
      pointer1 += 1
    else
      pointer2 -= 1
    end
  end

  output
end
