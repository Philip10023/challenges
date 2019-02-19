items_we_have = "chips popcorn skittles mentos gum cheetos m&ms"
puts "what item would you like?"
input = gets.chomp
item_index = items_we_have.index(input)
if item_index.nil?
  puts "We dont have that item."
else
  puts "item_index:"
  puts item_index
end
