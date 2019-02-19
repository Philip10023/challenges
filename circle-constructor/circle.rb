class Circle
  attr_reader :radius

  def initialize(input)
    if input.kind_of?(Hash)
      if input[:radius].nil?
        @radius = input[:diameter].to_f / 2
      else
        @radius = input[:radius].to_f
      end
    else
      @radius = input
    end
  end
end
require "pry"
binding.pry
