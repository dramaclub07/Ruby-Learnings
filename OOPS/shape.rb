class Shape  
  def area  
    raise NotImplementedError, "SUBCLASS MUST IMPLEMENT THE AREA METHOD"  
  end  
end  

class Circle < Shape  
  def initialize(radius)  
    @radius = radius  
  end  

  def area  
    Math::PI * @radius ** 2  
  end  

  def circumference  
    2 * Math::PI * @radius  
  end  
end  

class Rectangle < Shape  
  def initialize(width, height)  
    @width = width  
    @height = height  
  end  

  def area  
    @width * @height  
  end  
  
end  

 
circle = Circle.new(4)  
rectangle = Rectangle.new(5, 3)  


puts "Circle Area: #{circle.area}"            
puts "Circle Circumference: #{circle.circumference}"   
puts "Rectangle Area: #{rectangle.area}"    