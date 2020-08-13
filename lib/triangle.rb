class Triangle
  attr_accessor :a, :b, :c 
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c
  end
  
  #The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.
  #Further, each side must be larger than 0.
  
  def triangle_ex1
    a.positive? && b.positive? && c.positive?
  end
  
  def triangle_ex2
    a + b > c && a + c = b && b + c = a
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
    if triangle_ex1 == true || triangle_ex2 == true 
      puts true
    else 
      raise TriangleError
    end
    if equilateral?
      :equilateral
    elsif scalene?
      :scalene
    elsif isosceles?
      :isosceles
    else false
     
    end
  end
  

  
  class TriangleError < StandardError
  end


end

