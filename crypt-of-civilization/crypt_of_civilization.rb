crypt_of_civilization = Array.new

crypt_of_civilization << "Comptometer"
crypt_of_civilization << "Box of phonographic records"
crypt_of_civilization << "Plastic savings bank"
crypt_of_civilization << "Set of scales"
crypt_of_civilization << "Toast-O-Lator"
crypt_of_civilization << "Sample of aluminum foil"
crypt_of_civilization << "Donald Duck doll"



extra = ["Container of beer", "Lionel model train set", "Ingraham pocket watch"]

crypt_of_civilization = crypt_of_civilization + extra


puts "There are #{crypt_of_civilization.length} items in the array."

puts "The first item is #{crypt_of_civilization.first}"

puts "The last item is #{crypt_of_civilization.last}"

puts "The second item in the array is #{crypt_of_civilization[1]}"

puts "The third item in the array is #{crypt_of_civilization[2]}"

puts "The second the the last item in the array is #{crypt_of_civilization[8]}"


puts "Does the array contain: Container of beer?"
puts crypt_of_civilization.include?("Container of beer")

puts "Does the array contain: Toast-O-Lator?"
puts crypt_of_civilization.include?("Toast-O-Lator")

puts "Does the array contain: Plastic Bird?"
puts crypt_of_civilization.include?("Plastic bird")

print "-------------------\n"

puts "This code is sorted by length of words!"
puts crypt_of_civilization.sort_by { |item| item.length }

print "-------------------\n"

puts "This code is sorted by alphabetical order!"
puts crypt_of_civilization.sort

print "--------------\n"

puts "this code is sorted by reverse alphabetical order!"
puts crypt_of_civilization.sort.reverse

print "-------------\n"

count = 0
while count < crypt_of_civilization.length
  puts crypt_of_civilization[count]
  count += 1
end
print "----------------\n"

crypt_of_civilization.each do |item|
  puts item
end
print "-----------------\n"

puts "...200 years pass..."

puts "Wow some of this stuff really sucks!"

puts "*throws away*"
puts "*First item*"
puts crypt_of_civilization.shift
puts "*Last item*"
puts crypt_of_civilization.pop
puts "no thanks..."
puts crypt_of_civilization.delete("Set of scales")
puts "why?..."
puts crypt_of_civilization.delete("Sample of aluminum foil")

print "-------------------\n"

puts "The Not-So-Well kept Crypt of Civilization!"
puts crypt_of_civilization
