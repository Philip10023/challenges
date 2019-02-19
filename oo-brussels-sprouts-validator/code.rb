class Ingredient
  attr_accessor :quantity, :unit, :name
  def initialize(quantity, unit, name)
    @quantity = quantity.to_f
    @unit = unit.to_s
    @name = name.to_s
  end
  def allergic?

end
ingredient = Ingredient.new(2, "grams", "cocaine")
require 'pry'
binding.pry
