puts "Hello! What is your name?"
name = gets.chomp
items =  "Your Time Capsule list!\n"
items += "------------\n"

input = ""
while input != "finished" do
  print "Please add an item to the Time Capsule (or 'FINISHED'): "
  input = gets.chomp.to_s
  if input != "finished"
  puts "How many of these are you putting in?"
  number = gets.chomp.to_i
  if input != "finished"
    items += "* #{input}(#{number})\n"
  end
end
end
puts "\n\n"
puts items
