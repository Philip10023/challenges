puts "would you like to roll the dice?"
while input = gets.chomp
case input
when "yes"
dice_one = rand(6)+1
dice_two = rand(6)+1
  puts "dice 1: #{dice_one} dice 2: #{dice_two}"
  puts "your total is #{dice_one + dice_two}"
  print "Type yes to roll again or no to quit: "
when "no"
  puts "okay bye!"
  break
else
  puts "you did not type yes or no"
  end
end
