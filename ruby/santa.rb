# Do the thing for module 6.3
class Santa

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    p "Initializing Santa instance ..."
    # Release 1
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  # To check attributes
  def about
    p "Gender: #{@gender}"
    p "Ethnicity: #{@ethnicity}"
    p "Ranking: #{@reindeer_ranking}"
    p "Age: #{@age}"
  end

end

# test = Santa.new
# test.speak
# test.eat_milk_and_cookies("choc chip")

=begin
# Release 1 initialization code - needs refactoring
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
=end

# Release 1 initialization code refactored
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

# Release 1 diverse driver code
# Hash of santas with names and keys and gender and ethnicity attributes as values
my_santas = {
  "Santa 1" => ["trans", "rainbow"],
  "Santa 2" => ["bi", "everything"],
  "Santa 3" => ["agender", "amorphous"]
}
# Initialize hash of santas into array
my_santas_array =[]
my_santas.each do |k,v|
  my_santas_array << Santa.new(v[0],v[1])
end
# Check that each santa has been initialized in array
my_santas_array.each do |santa|
  santa.about  
end
