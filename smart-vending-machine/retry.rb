puts "Hello, I'm the Talking Vending Machine."
puts "What would you like today?"
print "> "
input = gets.chomp
puts "How many of those would you like?"
print "> "
amount = gets.chomp

if amount.index("tons")
 random_number = nil
   while random_number != 0
     random_number = rand(15)
     puts "#{input}"
   end
 else amount.to_i.times do
  puts "#{input}"
 end
end
puts "There you go! Enjoy! :)"
