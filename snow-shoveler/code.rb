height = 0.66
length = 20
width = 8

driveway_cubic = height * length * width

puts "cubic feet: #{driveway_cubic}"

if driveway_cubic > 0 && driveway_cubic <= 49
  puts "Your quote is $20"
elsif driveway_cubic > 49 && driveway_cubic <= 149
  puts "your quote is $50"
elsif driveway_cubic > 150 && driveway_cubic <= 299
  puts "your quote is $100"
elsif driveway_cubic >= 299
  puts "your quote is $150"
end
