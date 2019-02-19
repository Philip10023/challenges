(1..100).each do |n|
a = String.new
a << "Fizz" if n%3 == 0
a << "Buzz" if n%5 == 0
a << n.to_s if a.empty?
puts a
end
