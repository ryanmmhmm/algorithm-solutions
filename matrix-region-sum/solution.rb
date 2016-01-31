## Matrix region sum problem.  Key is to make this most efficient

## sum of a rectangle of values in Matrix O, designated by the coordinates
## A and D (being opposing corners of an interior sub rectangle of O)

require 'matrix'

## Define Input matrix

def create_matrix(width, height)
  m = Array.new(width) { Array.new(height) }
  loop_through_matrix(m)
end

def loop_through_matrix(matrix)
  matrix.map.each do |subset|
    subset.map.each do |value|
      value = apply_random_number
    end
  end
end

def apply_random_number
  value = Random.new
  value.rand(100)
end
