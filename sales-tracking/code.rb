puts "enter values!"
sum = 0.0
while sum < 100 do
  print ">"
  input = gets.chomp.to_f
  sum = sum + input

end

puts "you've reached $100"
