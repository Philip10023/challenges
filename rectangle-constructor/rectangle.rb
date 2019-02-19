class Rectangle
  attr_reader :height, :width
  def initialize(height, width)
    @height = height
    if width.nil?
      @width = height
      else
        @width = width
      end
    end

    def area
      @area = height * width
    end
end
require "pry"
binding.pry
