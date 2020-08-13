class Triangle
  attr_accessor :a, :b, :c 
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c
  end

  def triangle_ex
    if a.positive? && b.positive? && c.positive?
      true
    else
      false
    end
  end
  
  def valid?
    if (a + b > c) && (a + c > b) && (b + c > a)
      true
    else 
      false
    end
  end 
  
  def equilateral?
    a == b && a == c && b == c
  end
  def scalene? 
    a != b && a != c && b != c
  end
  def isosceles?
    a == b || a ==c || b == c
  end
  def kind 
    if (triangle_ex == false || valid? == false)
      raise TriangleError
    end
    if equilateral?
      :equilateral
    elsif scalene?
      :scalene
    elsif isosceles?
      :isosceles
    end
  end
  
  class TriangleError < StandardError
  end
end

