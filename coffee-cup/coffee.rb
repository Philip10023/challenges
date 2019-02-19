class CoffeeCup
  attr_accessor :amount, :max_amount

  def initialize(amount = 8, max_amount = 12)
    @amount = amount
    @max_amount = max_amount
  end

  def sip!
    if @amount > 0
      @amount -= 1
    else
      puts "Hey! You need a refill!"
    end
  end

  def spill!
    @amount = 0
  end

  def refill!
    @amount = @max_amount - 2
  end

  def to_s
    "There is #{@amount}oz of coffee left in your #{@max_amount}oz cup."
  end
end
require 'pry'
binding.pry
