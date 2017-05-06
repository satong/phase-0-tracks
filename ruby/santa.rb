# Do the thing for module 6.3
class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    # p "Initializing Santa instance ..."
    # Release 1
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  # Release 1: to check attributes
  def about
    p "Gender: #{@gender}"
    p "Ethnicity: #{@ethnicity}"
    p "Ranking: #{@reindeer_ranking}"
    p "Age: #{@age}"
  end

  # Release 2: attribute-changing methods
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

  # Release 2: setter method
  #def gender=(new_gender)
    #@gender = new_gender
  #end

  # Release 2: getter methods
  #def age
    #@age
  #end

  #def ethnicity
    #@ethnicity
  #end

end

=begin
# Release 0 driver code
# test = Santa.new
# test.speak
# test.eat_milk_and_cookies("choc chip")

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
  # Release 2 and 3 driver code
  santa.get_mad_at("Vixen")
  santa.celebrate_birthday
  santa.gender = "new gender"
  santa.about
  p "Santa is #{santa.age} years old and is #{santa.ethnicity}"
end
=end

# Release 4
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# initialize 100 santas
100.times do
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end
santas.each do |santa|
  santa.age = rand(0..140)
  santa.about
  p "Santa is #{santa.age} years old and is #{santa.ethnicity}"
end
