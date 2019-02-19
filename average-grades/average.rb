jane = [98,95,88,97,74]
sam = [85,93,98,88,49]
matt = [87,93,89,97,65]
def average(grade_list)
  i = 0
  sum = 0
  grade_list.each do |grade|
    sum += grade
    i += 1
  end

  sum / i.to_f
end

jane_grade = average(jane)
sam_grade = average(sam)
matt_grade = average(matt)
puts "Jane's average : #{jane_grade}"
puts "Sam's average : #{sam_grade}"
puts "Matt's average : #{matt_grade}"

def letter_grade(average)
  if average >= 90
    "A"
  elsif average >= 80
    "B"
  elsif average >= 70
    "C"
  elsif average >= 60
    "D"
  else
    "F"
  end
end

jane_letter_grade = letter_grade(jane_grade)
sam_letter_grade = letter_grade(sam_grade)
matt_letter_grade = letter_grade(matt_grade)
puts "Jane's Letter Grade: #{jane_letter_grade}"
puts "Sam's Letter Grade: #{sam_letter_grade}"
puts "Matt's Letter Grade: #{matt_letter_grade}"

def rankings(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student}"
  end
end

rankings(['Johnny', 'Jane', 'Sally', 'Elizabeth', 'Michael'])
