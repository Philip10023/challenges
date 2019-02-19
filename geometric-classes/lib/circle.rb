class Circle
  attr_reader :radius, :x, :y

  def initialize(radius = 1, x = 0, y = 0)
    @x = x
    @y = y
    @radius = radius
  end

  def center_point
    [@x, @y]
  end

  def area
    Math::PI * @radius * @radius
  end

  def perimeter
    Math::PI * 2.0 * @radius
  end
  def diameter
    @radius * 2
  end
end
circle = Circle.new(3)
require 'pry'
binding.pry
