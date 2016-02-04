## Convert:
## [a_1, a_2, ..., a_N, b_1, b_2, ..., b_N, c_1, c_2, ..., c_N ]
## to
## [a_1, b_1, c_1, a_2, b_2, c_2, ..., a_N, b_N, c_N]
## using constant extra space.
##

## Input is a string of length 3N (if true)
## Output is a string of length 3N that has been rearranged

## Rules:
## str.length >= 3
## str.length % 3 == 0

def convert_array(str)
  return false if str.length < 3
  return false if str.length % 3 == 0

end
