class Person
  attr_reader :first, :last, :middle
def initialize(name, last = nil, middle = nil)
    if last.nil?
      full_name = name.split
      @first = full_name[0]
      if full_name.length == 2
        @last = full_name[1]
      else
        @middle = full_name[1]
        @last = full_name[2]
      end
    elsif middle.nil?
      @first = name
      @last = last
    else
      @first = name
      @last = last
      @middle = middle
    end
  end
end
require "pry"
binding.pry
