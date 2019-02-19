class SuperHero
  attr_reader :public_identity

  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

  private
  attr_reader :secret_identity
end

class Speedster < SuperHero
end

class Brawler < SuperHero
  def backstory
    "who cares"
  end
  def powers
    "fucking shit up"
  end
  def weakness
    "Nothing except nothing"
  end
  def health
    2000
  end
end
class Detective < SuperHero
  def backstory
   "i am the backstory"
  end
  def powers
    "magnification vision"
  end
  def weakness
    "#{@secret_identity}"
  end
  def speed_in_mph
    10
  end
end

class Demigod < SuperHero
end

class JackOfAllTrades < SuperHero
end

class WaterBased < SuperHero
end
