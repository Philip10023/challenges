# Write Ruby code to find out the answers to the following questions:
# * What is the value of the first transaction?
# * What is the value of the second transaction?
# * What is the value of the fourth transaction?
# * What is the value of the last transaction?
# * What is the value of the second from last transaction?
# * What is the value of the 5th from last transaction?
# * What is the value of the transaction with index 5?
# * How many transactions are there in total?
# * How many positive transactions are there in total?
# * How many negative transactions are there in total?
# * What is the largest withdrawal?
# * What is the largest deposit?
# * What is the small withdrawal?
# * What is the smallest deposit?
# * What is the total value of all the transactions?
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]
puts transactions.first
print "----------------\n"
puts transactions[1]
print "----------------\n"
puts transactions[3]
print "----------------\n"
puts transactions.last
print "----------------\n"
puts transactions[-2]
print "----------------\n"
puts transactions[-5]
print "----------------\n"
puts transactions[4]
print "----------------\n"
puts transactions.count
print "----------------\n"
sum = 0
transactions.each do |n|
  if n > 0
    sum += 1
  end
end
puts sum
print "----------------\n"
sum = 0
transactions.each do |n|
  if n < 0
    sum += 1
  end
end
puts sum
print "----------------\n"
puts transactions.min
print "------------------\n"
puts transactions.max
print "-----------------\n"
withdrawal = []
withdrawal<<transactions.reject { |n| n > 0}
puts withdrawal.max.max
print "----------------\n"
deposite = []
deposite<<transactions.reject { |n| n < 0}
puts deposite.min.min
print "------------------\n"
sum = 0
transactions.each do |n|
  sum += n
end
puts sum
print "-----------------\n"
initial_balance = 239_900
puts sum + initial_balance
print "------------------\n"
# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
# * Who are all the artists listed?
# * What are all the album names in the hash?
# * Delete the `Eminem` key-value pair from the list.
# * Add your favorite musician and their best album to the list.
# * Change `Nirvana`'s album to another.
# * Is `Nirvana` included in `best_records`?
# * Is `Soundgarden` included in `best_records`?
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
# * Which key-value pairs have a value that is greater than 10 characters?

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }
puts best_records.count
print "---------------\n"
best_records.each do |artist, record|
  puts "#{artist}"
end
print "----------------\n"
best_records.each do |a, r|
  puts "#{r}"
end
print "------------------\n"
best_records.delete("Eminem")
puts "#{best_records}"
print "-------------------\n"
best_records.merge!("Chance the Rapper" => "10 day")
puts "#{best_records}"
print "-----------------\n"
best_records['Nirvana'] = "Bleach"
puts "#{best_records}"
print "-------------------\n"
puts best_records.include?('Soundgarden')
print "------------------\n"
best_records['Soundgarden'] = "Superunknown"
puts "#{best_records}"
print "------------------\n"
best_records.each do |a, r|
  if a.length <= 6
    puts "#{a}, #{r}"
  end
end
print "--------------------\n"
best_records.each do |a, r|
  if r.length > 10
    puts "#{a}, #{r}"
  end
end
print "---------------------\n"
