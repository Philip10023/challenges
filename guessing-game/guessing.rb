score = 0
puts "Welcome to Guessing Game!"
puts "Please choose difficulty (easy or hard)"
print "> "
difficulty = gets.chomp

while difficulty != 'easy' && difficulty != 'hard'
  puts "Invalid input. Please select easy or hard"
  print "> "
  difficulty = gets.chomp
end

easy_number = rand(10)+1
hard_number = rand(20)+1
guess = guess.to_i

if difficulty == 'easy'
  puts "I've picked a number between 1 and 10. Now guess it!"
  print "> "
  guess = gets.chomp
  guess = guess.to_i
  score += 1
else
  puts "I've picked a number betweer 1 and 20. Now guess it!"
  print "> "
  guess = gets.chomp
  guess = guess.to_i
  score += 1
end

while guess != easy_number && difficulty == 'easy'
  puts "Nope, try again!"
  print "> "
  guess = gets.chomp
  guess = guess.to_i
  score +=1
end

while guess != hard_number && difficulty == 'hard'
  puts "Nope, try again!"
  print "> "
  guess = gets.chomp
  guess = guess.to_i
  score += 1
end

puts "You win! Nice Job!"
puts "your total score is #{score}"
