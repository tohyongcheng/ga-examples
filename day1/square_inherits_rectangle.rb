class Rectangle

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    @length * 2 + @breadth * 2
  end

  def area
    @length * @breadth
  end

end


class Square < Rectangle

  def initialize(length)
    super(length, length)   # calls the initialize method defined in Rectangle
  end

end

my_sq = Square.new(5)
puts my_sq.perimeter
puts my_sq.area