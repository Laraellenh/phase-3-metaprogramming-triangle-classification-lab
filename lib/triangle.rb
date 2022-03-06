require "pry"

class Triangle


  attr_accessor :a, :b, :c, :triangle
  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
    @triangle = [a, b, c, ]
  end
  # write code here
  def kind 
    if self.invalid?
      raise TriangleError
    elsif @a ==@b && @b == @c
      :equilateral
    elsif @a==@b||@b==@c||@c==@a
      :isosceles
    else
      :scalene
    end
  end

  def invalid?
    if self.triangle.min <= 0 || @a + @b<=@c || @b+@c<=@a || @c+@a<=@b
      true
    end
  end
    
  class TriangleError < StandardError
    def message
      "you died"
    end
  end




end
