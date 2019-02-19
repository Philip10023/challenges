items = ["old paperback book", "potato", "red onion", "dried lemon",
  "frankincense", "medicinal herbs", "saffron", "glass spice jar",
  "red fabric", "orange fabric", "handicrafts", "small persian rug",
  "medium persian rug", "large persian rug", "extra large persian rug"]
puts "Hello shopper! What is your name?"
name = gets.chomp
puts "Okay, #{name}, here are our items!"
items.each do |item|
  puts "#{item}"
end
puts
input = ""
shopping_cart = Array.new
while true
  puts "What would you like to buy? (type fin when you're done)"
  print "> "
  input = gets.chomp.downcase

  if input == "fin"
    break

  elsif items.include?(input)
    shopping_cart << input
  else
    puts "Sorry, that item is not in our store yet!"
  end
end
puts
puts "Okay #{name}, thanks for using our online Souq platform."
puts "Here is a list of items in your cart!:"

shopping_cart.each do |item|
  puts "> #{item}"
end
