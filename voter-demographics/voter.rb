people =
[{Age: 25, Income: 50000, HouseholdSize: 1, Gender: "Male", Education: "College"},
{Age: 30, Income: 60000, HouseholdSize: 3, Gender: "Female", Education: "High School"},
{Age: 32, Income: 80000, HouseholdSize: 2, Gender: "Unspecified", Education: "College"},
{Age: 35, Income: 65000, HouseholdSize: 4, Gender: "Female", Education: "College"},
{Age: 38, Income: 63000, HouseholdSize: 3, Gender: "Male", Education: "College"},
{Age: 48, Income: 78000, HouseholdSize: 5, Gender: "Male", Education: "High School"},
{Age: 45, Income: 75000, HouseholdSize: 2, Gender: "Female", Education: "College"},
{Age: 24, Income: 45000, HouseholdSize: 1, Gender: "Male", Education: "Did Not Complete High School"},
{Age: 45, Income: 75000, HouseholdSize: 1, Gender: "Male", Education: "College"},
{Age: 52, Income: 100000, HouseholdSize: 2, Gender: "Male", Education: "College"}]
print "----------------------\n"
sum = 0
i = 0
people.each do |person|
  sum += person[:Age]
    i += 1
end
puts "Average age: #{sum/i.to_f}"
print "-----------------------\n"
sum = 0
i = 0
people.each do |person|
  sum += person[:Income]
    i += 1
end
puts "Average Income: #{sum/i.to_f}"
print "-------------------\n"
sum = 0
i = 0
people.each do |person|
  sum += person[:HouseholdSize]
    i += 1
end
puts "Average Household Size: #{sum/i.to_f}"
print "-------------------\n"
female = 0
male = 0
unspecified = 0
people.each do |person|
  if person[:Gender] == "Female"
    female += 10
  end
    if person [:Gender] == "Male"
      male += 10
    end
      if person [:Gender] == "Unspecified"
        unspecified += 10
  end
end
puts "Female %: #{female}"
print "----------------\n"
puts "Male %: #{male}"
print "----------------\n"
puts "Unspecified %: #{unspecified}"
print "-------------------\n"
college = 0
high_school = 0
did_not_graduate = 0
people.each do |person|
  if person[:Education] == "College"
    college += 10
  end
    if person[:Education] == "High School"
      high_school += 10
    end
      if person[:Education] == "Did Not Complete High School"
        did_not_graduate += 10
  end
end
puts "College Graduate %: #{college}"
print "----------------\n"
puts "High School Graduate %: #{high_school}"
print "----------------\n"
puts "Did Not Complete High School %: #{did_not_graduate}"
print "-------------------\n"
