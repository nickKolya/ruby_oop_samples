class Shape
  def draw
    raise NotImplementedError,
      'You have to implement draw method!'
  end
end

class Circle < Shape
  def draw
    p 'Drawing an object as a Circle'
  end
end

class Square < Shape
  def draw
    p 'Drawing an object as a Square'
  end
end

Shape.new.draw
# => NotImplementedError (You have to implement
#    draw method!)

Circle.new.draw
# => "Drawing an object as a Circle"

Square.new.draw
# => "Drawing an object as a Square"
