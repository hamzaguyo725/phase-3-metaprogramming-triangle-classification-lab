class Triangle
  # write code here

  attr_accessor :x , :y , :z


  def initialize (x, y, z)
    @y = y
    @x = x
    @z = z
  end

  def kind

    if  x === 0 || z === 0 || y === 0
      raise TriangleError
    elsif x + y < z || y + z < x
      raise TriangleError
    elsif x + y <= z || x + z <= y || y + z <= x
      raise TriangleError
     elsif x === y && x === z
      :equilateral
    elsif x === y || x === z || y === z
      :isosceles
    elsif x != y && x != z
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle"
    end
  end
end
