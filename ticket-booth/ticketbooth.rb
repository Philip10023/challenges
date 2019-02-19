hot_dog = 1.27
hamburger = 4.17
funnel_cake = 3.79
ice_cream_sandwich = 0.75

puts "Hello! Welcome to our amusement park!"
puts "How many adult tickets would you like today?"
Adult_tickets = gets.chomp
puts "How many child tickets would you like today?"
Child_tickets = gets.chomp
puts "Here are your " + Adult_tickets + " adult tickets and " + Child_tickets + " child tickets.
Have a wonderful day!"

puts hamburger * 2 + ice_cream_sandwich * 2
puts funnel_cake * 8 + hot_dog
puts (hot_dog + hamburger + funnel_cake + ice_cream_sandwich) * 3
