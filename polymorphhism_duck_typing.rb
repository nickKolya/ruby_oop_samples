class Circle
  def draw
    p 'Drawing an object as a Circle'
  end
end

class Square
  def draw
    p 'Drawing an object as a Square'
  end
end

class GenericDrawer
  def draw(drawer)
    drawer.draw
  end
end

GenericDrawer.new.draw(Circle.new)
# => "Drawing an object as a Circle"

GenericDrawer.new.draw(Square.new)
# => "Drawing an object as a Square"
