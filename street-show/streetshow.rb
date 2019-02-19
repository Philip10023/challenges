knife_juggling_tips = 2.10 + 0.77 + 5.00 + 1.00 + 3.00
torch_juggling_tips = 6.00 + 3.50 + 7.00
hand_balancing_tips = 1.00 + 2.00
human_blockhead_tips = 0.75 + 0.43
total_income = human_blockhead_tips + knife_juggling_tips + torch_juggling_tips
+ hand_balancing_tips
average_tip = total_income / 12
puts "knife juggling:
$#{knife_juggling_tips}"
puts "torch juggling:
$#{torch_juggling_tips}"
puts "hand balancing:
$#{hand_balancing_tips}"
puts "human blockhead:
$#{human_blockhead_tips}"

puts "total income: $#{total_income}"
puts "average tip: $#{average_tip}"

puts "Hello everyone! For my first act i would like a member of the audience to
come on stage!"
puts "You there! What is your name?"
name = gets.chomp
puts "Everyone give a great welcome to " + name + ""
puts "Okay, " + name + ", what is your favorite number?"
number = gets.chomp
puts "Prepare to be amazed while I juggle with my feet for " + number + " seconds!"
