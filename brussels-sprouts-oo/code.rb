class Ingredient
attr_accessor :quantity, :unit, :name
  def initialize(quantity, unit, name)
    @quantity = quantity.to_f
    @unit = unit.to_s
    @name = name.to_s
    @summary = summary
  end
  def summary
    "#{quantity}, #{unit}, #{name}"
  end
end

class Recipe
attr_accessor :name, :ingredients, :instructions
  def initialize(name, ingredients, instructions)
  @name = name
  @ingredients = ingredients
  @instructions = instructions
end
  def ingredients
    @ingredients
  end
  def summary
    "Name: #{name}"
    "#{ingredients}"
  end
end
ingredient = Ingredient.new(47.0, "lb(s)", "Brussels Sprouts")
puts ingredient.summary
puts "----------------------\n"
name = "Phil's Cookies!!"
ingredients = [
Ingredient.new(2.0, "cup(s)", "flour"),
Ingredient.new(2.0, "unit(s)", "eggs"),
Ingredient.new(0.5, "tspn(s)", "baking soda"),
Ingredient.new(0.75, "cup(s)", "sugar"),
Ingredient.new(2.0, "tspn(s)", "vanilla extract"),
Ingredient.new(0.75, "unit(s)", "butter"),
Ingredient.new(0.5, "tspn(s)", "salt")]
instructions = [
"Preheat ovan to 340 Degrees F.",
"Pour flour in a big bowl",
"heat butter in microwave until fully melted",
"add eggs, heated butter, suger, salt, baking soda, and vanilla extract to a medium bowl (mix well)",
"add mixture to flour!(mix well)",
"portion out cookies onto cooking sheets with non-stick paper",
"cook for 15-25 minutes!"]
recipe = Recipe.new(name, instructions, ingredients)
puts name

ingredients.each do |ingredient|
  puts ingredient.summary
end
puts recipe.ingredients
