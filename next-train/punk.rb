fantasy_authors = ["Terry Pratchett", "Ursula Le Guin", "J.R.R. Tolkien", "George R.R. Martin"]
puts "Here is a list of my favorite fantasy authors:\n"

fantasy_authors.each_with_index do |author, index|
  puts "#{index}) #{author}\n"
end
