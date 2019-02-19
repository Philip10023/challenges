class Square
  attr_reader :length, :width, :x, :y

  def initialize(length = 0, x = 0, y = 0)
    @x = left
    @y = y
    @length = length
    @width = length
  end

  def center_point
    [@x, @y]
  end

  def area
    @length * @width
  end

  def perimeter
    @length*4
  end
  def diagonal
    @length*Math.sqrt(2)
  end
  def contains_point?(a, b)
    if
      a > @length + @x || a < @x - @length || b > @width + @y || b < @width - @y
      puts "point (#{a},#{b}) is NOT contained in or on the square"
    else
       puts "point (#{a},#{b}) IS contained in or on the square"
    end
  end
end

require 'pry'
binding.pry
