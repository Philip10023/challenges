require_relative 'Deck'
require_relative 'Card'
require 'pry'
class Hand
  attr_accessor :Deck, :cards, :values
  def initialize(cards)
    @cards = cards
    @values= []
    @cards.each do |card|
      @values << card.value
    end
  end
  def calculate_hand
    sum = 0
    @cards.each do |card|
      # binding.pry
      sum += card.convert_to_num_value
      end
      high_aces = 0
      if @values.include?('A') && sum > 21
        high_aces += 1
        sum-=10*high_aces
      end
      return sum
    end
end
