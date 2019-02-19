game_results = [
  { par: 5, score: 7 },
  { par: 4, score: 5 },
  { par: 3, score: 3 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 2 },
  { par: 4, score: 5 },
  { par: 5, score: 5 },
  { par: 4, score: 5 },
  { par: 5, score: 7 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 3 },
  { par: 4, score: 5 },
  { par: 4, score: 5 },
  { par: 4, score: 4 },
  { par: 3, score: 3 },
  { par: 5, score: 6 }
]

total_score = 0
total_par = 0

game_results.each do |hash|
  total_par += hash[:par]
  total_score += hash[:score]
end
  puts "Your total Strokes: #{total_score}"
  puts "Your total Par: #{total_par}"

score = total_score - total_par

term = ""
if score >= 0
  term = "over"
else
  term = "under"
  score = score * -1
end

puts "You were #{score} #{term} par."
