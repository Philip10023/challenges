require_relative 'deck'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def convert(card)
    if card["J"] || card["Q"] || card["K"]
      return 10
    elsif card["A"]
      return 11
    else
      return card.chop.to_i
    end
  end

  def calculate_hand
    card_1 = convert(@cards[0])
    card_2 = convert(@cards[1])
      if card_1 == 11 && card_2 == 11
         card_2 = 1
      end
      card_1 + card_2
    end
  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
