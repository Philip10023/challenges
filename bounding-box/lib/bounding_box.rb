class BoundingBox

  attr_accessor :x, :y, :width, :height, :left, :right, :bottom, :top
  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def bottom
    @y
  end

  def top
    @y + @height
  end

  def contains_point?(x,y)
    return (
    ( left <= x ) &&
    ( right >= x ) &&
    ( bottom <= y) &&
    ( top >= y )
    )
  end

end
