# create a variable that will hold the total price
total_price = 0.0

# loop until the user is done entering prices
input = nil
while input != "done" do
  # print out the current total price
  puts "\nThe current total is: $ #{total_price}"

  # ask the user for a price, or if they are done
  print "What is the price of the item? (enter 'done' when finished)\n> "

  # get the price
  input = gets.chomp

  # add the price to the total
  total_price = total_price + input.to_f

# end loop
end

# print the final total price
puts "\n\n"
puts "The total is: $ #{total_price}"
