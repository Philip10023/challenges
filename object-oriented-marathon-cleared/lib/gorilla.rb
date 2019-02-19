class Gorilla
  attr_accessor :name
  def initialize(name)
    @name=name
  end
  def speak
    "#{@name} got a bad feeling about this..."
  end
end
