## Matrix region sum problem.  Key is to make this most efficient

## sum of a rectangle of values in Matrix O, designated by the coordinates
## A and D (being opposing corners of an interior sub rectangle of O)
## A, B, C and D are described as points like so: [x,y]

## Define Input matrix
class Matrix

  attr_reader :o, :a, :b, :c, :d

  def initialize(o = 10, a=[3,3], b=[3,7], c=[7,3], d=[7,7])
    @o = create_matrix(o,o)
    @a = a
    @b = b
    @c = c
    @d = d
  end

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

end