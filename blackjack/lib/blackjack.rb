require_relative "card"
require_relative "deck"
require_relative "hand"
require 'pry'

deck=Deck.new
# def hit
#   binding.pry
#   deck.deal(1)
# end

playerCards=deck.deal(2)
dealerCards=deck.deal(2)

player = Hand.new(playerCards)
computer = Hand.new(dealerCards)

playerstorage = ""

playerCards.each do |card|
  playerstorage  << "|#{card.value}, #{card.suit}|\t"
end

puts "The player's cards are #{playerstorage}"
puts "Hit or Stand? H/S:"
userinput = gets.chomp
if userinput != 'H' && userinput != 'S'
  raise "Input error"
end

while userinput != 'S' do

  player.cards << deck.deal(1)[0]

  player.values << player.cards[-1].value
  # playerCards << player.cards[-1]
  playerstorage= ""

  player.cards.each do |card|
    playerstorage  << "|#{card.value}, #{card.suit}|\t"
  end
  puts "The player's cards are #{playerstorage}"
  puts "Hit or Stand? H/S:"
  userinput = gets.chomp
  if userinput != 'H' && userinput != 'S'
    raise "Input error"
  end
end
# binding.pry
playerstorage=""
# binding.pry

player.cards.each do |card|
  playerstorage  << "|#{card.value}, #{card.suit}|\t"
end
puts "The player's cards are #{playerstorage}"
# binding.pry
dealerstorage = ""

computer.cards.each do |card|
  dealerstorage  << "|#{card.value}, #{card.suit}|\t"
end

puts player.calculate_hand
# binding.pry

until computer.calculate_hand >= 17 do

  computer.cards << deck.deal(1)[0]


  computer.values << computer.cards[-1].value
  dealerstorage= ""

  computer.cards.each do |card|
    dealerstorage  << "|#{card.value}, #{card.suit}|\t"
  end
end

puts "The dealer's cards are #{dealerstorage}"
# binding.pry

puts player.calculate_hand
puts computer.calculate_hand
# binding.pry
if computer.calculate_hand > 21 && player.calculate_hand > 21
 puts "Everyone loses this one. So we'll tie, but you lose"
elsif computer.calculate_hand > 21 && player.calculate_hand < 21
  # binding.pry
  puts "CONGRADULATIONS MOTHER FUCKER"
elsif computer.calculate_hand > player.calculate_hand && computer.calculate_hand < 21 || player.calculate_hand > 21
  # binding.pry
  puts "You busted, you fucking idiot"
elsif computer.calculate_hand == 21 && player.calculate_hand != 21
  puts "You busted, you fucking idiot"
elsif computer.calculate_hand == player.calculate_hand
  puts "TIE: so dealer wins sorry"
else
  # binding.pry
  puts "CONGRADULATIONS MOTHER FUCKER"
end
