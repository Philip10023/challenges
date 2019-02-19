grocery_list =  "Grocery List\n"
grocery_list += "------------\n"

input = ""
while input != "done" do
  print "Please enter an item (or 'done'): "
  input = gets.chomp

  if input != "done"
    grocery_list += "* #{input}\n"
  end
end

puts "\n\n"
puts grocery_list
