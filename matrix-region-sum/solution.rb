## Matrix region sum problem.  Key is to make this most efficient

## sum of a rectangle of values in Matrix O, designated by the coordinates
## A and D (being opposing corners of an interior sub rectangle of O)
## A, B, C and D are described as points like so: [x,y]

## a ----- b
## .       .
## c ----- d

## Define Input matrix
class Matrix

  attr_reader :o, :a, :b, :c, :d, :oa, :ob, :oc, :od

  def initialize(o = 10, a=[3,3], b=[7,3], c=[3,7], d=[7,7])
    @o = create_matrix(o,o)
    @a = a
    @b = b
    @c = c
    @d = d
    @oa = compute_area(@a)
    @ob = compute_area(@b)
    @oc = compute_area(@c)
    @od = compute_area(@d)
  end

  def create_matrix(columns, rows)
    m = Array.new(columns) { Array.new(rows) }
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

  def find_y(coordinate)
    coordinate[0]
  end

  def find_x(coordinate)
    coordinate[1]
  end


  def compute_area(coordinate)
    sum = 0
    x = find_x(coordinate)
    y = find_y(coordinate)

    for row in 0..y
      for value in 0..x
        sum += @o[y][x]
      end
    end

    return sum
  end

end