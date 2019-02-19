Price_Adult = 12.80
Price_child = 4.00
Number_kids = 2
Number_adults = 4
Total_cost = (Price_Adult * Number_adults) + (Number_kids * Price_child)
Split_cost = (Total_cost / Number_adults)

puts "#{Total_cost} dollars is the price of admissions for all 6 people!"

puts "#{Split_cost} dollars per adult!"
