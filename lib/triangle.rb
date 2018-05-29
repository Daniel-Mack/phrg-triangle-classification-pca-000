require 'pry'

class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    # binding.pry
    if [@a,@b,@c].min <= 0 ||  @a + @b <= @c || @b + @c <= @a || @a + @c <= @b
      raise TriangleError
    end
    if @a == @b && @a == @c && @b == @c
      return :equilateral
    elsif @a == @b || @a == @c || @b == @c
      return :isosceles
    else
      return :scalene
  end
end

  class TriangleError < StandardError
    def message
      "Triangles with no size are illegal"
    end
  end
end
