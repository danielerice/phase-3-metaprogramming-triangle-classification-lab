class Triangle
  
  attr_accessor :side1, :side2, :side3

  def initialize side1, side2, side3
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid_triangle
    if @side1== 0
      raise TriangleError
    elsif @side2 == 0
      raise TriangleError
    elsif @side3 == 0
      raise TriangleError
    elsif @side1 + @side3 <= @side2
      raise TriangleError
    elsif @side1 + @side2 <= @side3
      raise TriangleError
    elsif @side2 + @side3 <= @side1
      raise TriangleError
    end

  end

  def kind
    triangle_array = [@side1, @side2, @side3]
    
    valid_triangle

    if triangle_array.uniq.length == 3
      return :scalene
    elsif triangle_array.uniq.length == 2
      return :isosceles
    elsif triangle_array.uniq.length == 1
      return :equilateral
    end
  end


  class TriangleError < StandardError
  end
end
