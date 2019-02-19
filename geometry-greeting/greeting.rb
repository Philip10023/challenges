def greet(name, language = nil)
  if language == 'spanish'
    puts "Hola #{name}!"
  elsif language == 'italian'
    puts "Ciao #{name}!"
  elsif language == 'french'
    puts "Bonjour #{name}!"
  else
    random_greeting = ["WAZZZZZAPPPP", "Yo", "Hey", "WHYY DID YOU DO IT"].sample
    puts "#{random_greeting} #{name}!"
  end
end
greet "john", "italian"
greet "Sally", "english"
greet "Dan The Man", "english"
greet "Stan", "french"
