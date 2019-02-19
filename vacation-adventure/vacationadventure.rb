puts "\nPress enter to choose number between 1 and 3 or Q to exit"

input = gets.chomp
  if input =="q"
  exit

else
  enter = rand(4)+1

  puts "Random number is #{enter}"
  puts "If random number is 1 go sailing! If random number is 2 go to the animal
reservation! If the random number is 3 go jet skiing!"
end
