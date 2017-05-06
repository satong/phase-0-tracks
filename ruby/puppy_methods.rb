class Puppy

  def fetch(toy)
    p "I brought back the #{toy}!"
    toy
  end

  def roll_over
    p "*rolls over*"
  end

  def dog_years(int)
    p int * 6
  end

  def sitdown(place)
    p "*sits down at #{place}*"
  end

  def speak(int)
    p int.times"woof"
    toy
  end

# Release 1
  def initialize
    p "Initializing new puppy instance ..."
  end


end


# Release 0
fido = Puppy.new

fido.fetch("stick")
fido.roll_over
fido.dog_years(6)
fido.sitdown("kennel")
# fido.initialize

# Release 2

class Pirate

  def scream(int)
    p "AYE MI HEARTIES! " * int
  end

  def steal(string)
    p "The pirate stole a #{string}!"
  end

  def sing(string)
    p "A pirate went to sea!"
  end

end
=begin
# Create 50 instances. Part 1: create array of pirate variables
arr = []
x = 1
while x < 51
  arr << "pirate"+x.to_s
  x += 1
end
# Turn array into instances
eval arr.map{|x| "#{x} = Pirate.new"}.join('; ')
=end

#initialize 50 instances of Pirate and store in an array
pirates = (0..50).map{|i| Pirate.new}

#iterate over data structure and call the instance methods on each instance
pirates.each do |individual_pirate|
  individual_pirate.scream("matey")
  individual_pirate.steal("gold coin")
end
