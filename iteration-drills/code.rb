# 1). Every element called 'number' in the numbers array is multiplied by three, and then print the new 'number'.
# 2). Every element called 'name' in the 'names' array, prints out length of charecters in name.
# 3). Every element called 'number' in the numbers array is added to a variable called 'sum', then prints out sum.
# 4). Every key called 'name' in the 'age and name' hash...
# ...and every value called age in the hash are printed to show 'name' and 'age' in hash.
# 5). Every key called 'transaction' in the 'accounts' hash is called on to reveil the value of each transaction...
# ...and is added to a variable called sum to reveil the total transations.
# 6) Every key called 'name' and every value called 'address' from the adresses hash is printed
# ---------------------------------------------------------------------------------------------
# 1)
# sentences.each do |word|
#   puts "#{word}"
# 2)
# numbers = ["6038603982", "5088603982"]
# mass_area_codes = ["978", "508", "339", "413", "617", "781", "351", "774", "867"]
# numbers.each do |phone_number|
#   mass_area_codes.each do |ma|
#     if phone_number.include?(ma)
#     print phone_number
#   end
# end
# end
# 3)
# numbers = [1, 2, 3]
# numbers.each do |n|
#   if n.odd?
#     puts "#{n}"
#  end
# end
# 4)
# ages = {:phil=>20, :sam=>17, :mike=>18, :julie=>9}
# ages.each do |n, a|
#   puts "#{n}, #{a}"
# end
# 5)
# ages = {:phil=>20, :sam=>17, :mike=>18, :julie=>9}
# ages.each do |n, a|
#   if a > 10
#   puts "#{n}, #{a}"
# end
# end
# 6)
# ages = {:phil=>20, :sam=>17, :mike=>18, :julie=>9}
# ages.each do |n, a|
#   if a.even?
#   puts "#{n}, #{a}"
# end
#end
# ------------------------------------------------------------------------------
# Write Ruby code to find out the answers to the following questions:
# * What is the sum of all the numbers in `array`?
# * How would you print out each value of the array?
# * What is the sum of all of the even numbers?
# * What is the sum of all of the odd numbers?
# * What is the sum of all the numbers divisble by 5?
# * What is the sum of the squares of all the numbers in the array?
array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]
# 1)
sum = 0
array.each do |n|
  sum += n
end
puts sum
print "------------------\n"
# 2)
array.each do |n|
  print "#{n}\n"
end
print "-------------------\n"
# 3)
puts array.select { |n| n.even? }
print "-------\n"
# 4)
puts array.select {|n| n.odd? }
print "---------------\n"
# 5)
puts array.select { |n| n % 5 == 0 }
print "------------\n"
# 6)
squared_array = []

array.each do |n|
  squared_array << n ** 2
end
sum = 0
squared_array.each do |n|
  sum += n
end
puts sum
print "--------------------\n"


array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:
# * How would you print out each name backwards in `array`?
# * What are the total number of characters in the names in `array`?
# * How many names in `array` are less than 5 characters long?
# * How many names in `array` end in a vowel?
# * How many names in `array` are more than 5 characters long?
# * How many names in `array` are exactly 5 characters in length?
# 1)
array.each do |n|
  puts "#{n}".reverse
end
print "------------------\n"
# 2)
array.each do |n|
  puts "#{n}".length
end
print "-----------------\n"
# 3)
vowels = ["a","e","i","o","u"]
array.each do |n|
  vowels.each do |v|
  if n[-1].include?(v)
    puts "#{n}"
end
end
end
print "-------------\n"
# 4)
array.each do |n|
  if n.length > 5
    puts "#{n}"
  end
end
print "----------------\n"
# 5)
array.each do |n|
  if n.length == 5
    puts "#{n}"
  end
end
