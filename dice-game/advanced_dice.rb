again_input = true
while again_input == true do
puts "how many sides would you like your dice to be?"
input = gets.chomp.to_i
puts "How many times would you like to roll the #{input} sided dice?"
input_two = gets.chomp.to_i
input_two.times do
dice_one = rand(input)+1
dice_two = rand(input)+1
rolls = dice_one + dice_two
  puts "you rolled #{dice_one} and #{dice_two}. Your total is #{rolls}"
end
  print "would you like to roll again? yes/no : "
again_input = gets.chomp.downcase
if again_input == "yes"
  again_input = true
if again_input == "no"
  again_input = false
  puts "okay bye!"
  exit
  end
elsif again_input != "yes" && again_input != "no"
  puts "you did not type yes or no so ill assume yes!"
  again_input = true
end
end
